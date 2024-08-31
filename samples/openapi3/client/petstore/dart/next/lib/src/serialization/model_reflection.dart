import 'package:petstore_api/_internal.dart';

import 'dart:collection';
import 'package:collection/collection.dart';

extension type DiscriminatorKey(String key) {}
extension type DiscriminatorValue(String key) {}

typedef AggregatedDiscriminatorsResult
    = Map<DiscriminatorKey, Map<DiscriminatorValue, ModelReflection>>;

abstract class ModelReflection<T>
    with
        HasXmlReflection,
        HasOasName,
        SerializationReflection<T>,
        InheritanceBasedSerializationReflection<T> {
  const ModelReflection();
  String get modelName;

  @override
  String get oasName => modelName;
  String get className;
  XmlReflection get xml;
  String? get discriminatorKey;
  Map<String, ModelReflection> get discriminatorMappings;
  Map<String, ModelReflection> get discriminatorImplicitMappings;

  AdditionalPropertiesPart<T, dynamic>? get additionalPropertiesPart => null;
  List<OneOfReflection<T, dynamic>> get oneOfs => [];
  List<AnyOfReflection<T, dynamic>> get anyOfs => [];
  List<AllOfReflection<T, dynamic>> get allOfs => [];

  ModelReflection? tryGetDiscriminatorModel(String? discriminatorValue) {
    if (discriminatorValue == null) {
      return null;
    }
    return discriminatorMappings[discriminatorValue] ??
        discriminatorImplicitMappings[discriminatorValue];
  }

  static final _cachedAggregatedDiscriminators =
      Expando<AggregatedDiscriminatorsResult>();

  AggregatedDiscriminatorsResult get aggregatedDiscriminators {
    final cached = _cachedAggregatedDiscriminators[this];
    if (cached != null) {
      return cached;
    }
    final result =
        <DiscriminatorKey, Map<DiscriminatorValue, ModelReflection>>{};
    _aggregatedDiscriminators(this, result);
    return _cachedAggregatedDiscriminators[this] = result;
  }

  static void _aggregatedDiscriminators(
    ModelReflection reflection,
    AggregatedDiscriminatorsResult result,
  ) {
    if (reflection.discriminatorKey case String discriminatorKey) {
      final discriminatorMapping =
          result[DiscriminatorKey(discriminatorKey)] ??= {};
      discriminatorMapping.addAll(
        reflection.discriminatorImplicitMappings
            .map((key, value) => MapEntry(DiscriminatorValue(key), value)),
      );
      discriminatorMapping.addAll(
        reflection.discriminatorMappings
            .map((key, value) => MapEntry(DiscriminatorValue(key), value)),
      );
    }
    for (final OneOfReflection(reflection: UndefinedWrapperReflection(subReflection: classReflection))
        in reflection.oneOfs) {
      //TODO: this logic is WRONG, classReflection can be UndefinedWrapperReflection
      if (classReflection is! ModelReflection) {
        continue;
      }
      _aggregatedDiscriminators(classReflection, result);
    }
    for (final AnyOfReflection(reflection: UndefinedWrapperReflection(subReflection: classReflection)) in reflection.anyOfs) {
      //TODO: this logic is WRONG, classReflection can be UndefinedWrapperReflection
      if (classReflection is! ModelReflection) {
        continue;
      }
      _aggregatedDiscriminators(reflection, result);
    }
  }

  /// Aggregates properties from anyof and oneof as well.
  static final _cachedAggregatedProperties =
      Expando<Map<String, PropertyReflection>>();

  Map<String, PropertyReflection> get aggregatedProperties {
    final cached = _cachedAggregatedProperties[this];
    if (cached != null) {
      return cached;
    }

    final result = <String, PropertyReflection>{};
    _aggregateProperties(this, result);
    return _cachedAggregatedProperties[this] = result;
  }

  static void _aggregateProperties(
    ModelReflection reflection,
    Map<String, PropertyReflection> result,
  ) {
    //
    for (var element in reflection.properties) {
      result[element.oasName] = element;
    }
    for (var element in reflection.oneOfs) {
      final subReflection = element.reflection.subReflection;
      if (subReflection is ModelReflection) {
        _aggregateProperties(subReflection, result);
      }
    }
    for (var element in reflection.anyOfs) {
      final subReflection = element.reflection.subReflection;
      if (subReflection is ModelReflection) {
        _aggregateProperties(subReflection, result);
      }
    }
  }

  List<PartReflectionMixin<T, dynamic>> get parts => [
        ...oneOfs,
        ...anyOfs,
        ...allOfs,
        ...properties,
        if (additionalPropertiesPart != null) additionalPropertiesPart!,
      ];
  List<PropertyReflection<T, dynamic>> get properties;
  Set<String> get knownKeys => aggregatedProperties.keys.toSet();

  T example([ExampleContext? context]) {
    context ??= ExampleContext(discriminators:  aggregatedDiscriminators);
    for (final MapEntry(key: propName, value: mappings) in context.discriminators.entries) {
      if (context.discriminatorExampleResults.containsKey(propName)) {
        continue;
      }
      final r =  context.exampleDiscriminator(mappings);
      if (r != null){
        context.discriminatorExampleResults[propName] = r;
      }
    }

    final exampleResult = empty();
    for (var propPart in properties) {
      var propExample = propPart.reflection.exampleFunction(context);
      final preSelectedResult = context.discriminatorExampleResults[propPart.oasName]?.key.key;
      if (preSelectedResult != null) {
        propExample = preSelectedResult;
      }
      propPart.setter(exampleResult, propExample);
    }
    if (additionalPropertiesPart
        case AdditionalPropertiesPart(
          setter: final additionalPropertiesPartSetter,
          reflection: final additionalPropertiesPartReflection,
        )) {
      additionalPropertiesPartSetter(exampleResult,
          additionalPropertiesPartReflection.exampleFunction(context),);
    }
    for (var element in [...oneOfs, ...anyOfs]) {
      element.setter(
          exampleResult, element.reflection.exampleFunction(context));
    }
    return exampleResult;
  }

  @override
  Object? serialize(
    T instance, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    final reflection = this;
    return context.split(
      onJson: (context) {
        // Logic is:
        // 1. Start with oneof and anyof serialization
        // 2. The output of the serialization is either a Map, null or a scalar.
        // 3. If it is a Map or null, then we need to add the vars from allVars
        // 4. If it is a non-null value, return it.
        Object? result;
        // 1. Handle oneof serialization
        final oneOfResult = reflection.oneOfs
            .where((oneof) => oneof.getter(instance).isDefined)
            .firstOrNull;
        if (oneOfResult != null) {
          result = oneOfResult.reflection.serializeFunction(
            oneOfResult.getter(instance).valueRequired,
            context,
          );
        }
        // 2. Handle anyof serialization
        final anyOfResults = reflection.anyOfs
            .where((anyOf) => anyOf.getter(instance).isDefined)
            .toList();
        if (anyOfResults.isNotEmpty) {
          final serializedAnyOfs = anyOfResults
              .map(
                (anyOf) => anyOf.reflection.serializeFunction!(
                  anyOf.getter(instance).valueRequired,
                  context,
                ),
              )
              .toList();
          for (var anyOf in serializedAnyOfs) {
            if (anyOf is Map<String, dynamic>) {
              result ??= <String, dynamic>{};
              if (result is Map<String, dynamic>) {
                result.addAll(anyOf);
              } else {
                // Model is trying to mix scalar and non-scalar properties via anyof
              }
            } else {
              if (result == null) {
                result = anyOf;
              } else {
                // If the anyOfs are scalars, then we only pick the first one, since it's not possible to mix them.
              }
            }
          }
        }
        result ??= <String, dynamic>{};
        // 3. Handle properties
        if (result is Map<String, dynamic>) {
          result = {
            ...result,
            // we give priority to self properties over oneOf/anyOf.
            ...Map.fromEntries(
              reflection.properties
                  .where((x) =>
                      x.getter(instance) != UndefinedWrapper.$undefinedToken)
                  .map(
                    (x) => MapEntry(
                      x.oasName,
                      x.reflection
                          .serializeFunction(x.getter(instance), context),
                    ),
                  ),
            ),
          };
          // Put additional properties last so that users can override any existing property value.
          final additionalPropertiesPart = reflection.additionalPropertiesPart;
          if (additionalPropertiesPart != null) {
            final additionalProperties =
                additionalPropertiesPart.getter(instance);
            final serializedAdditionalPropertiesEntries = additionalProperties
                .entries
                //ignore undefined
                .where(
                  (e) => e.value != UndefinedWrapper.$undefinedToken,
                )
                .map(
                  (e) => MapEntry(
                    e.key,
                    additionalPropertiesPart.itemReflection.serializeFunction!(
                      e.value,
                      context,
                    ),
                  ),
                );
            result.addEntries(serializedAdditionalPropertiesEntries);
          }
        }
        return result;
      },
      onXml: (context) {
        final xmlReflection = context.xmlContainer?.xml ?? reflection.xml;
        // if the result of serialization outputs an XmlElement (or multiple elements), this will be its name.
        final elementName =
            xmlReflection.getQualifiedName(reflection.modelName);
        // Logic is:
        // 1. Start with oneof and anyof serialization
        // 2. The output of the serialization is either a Map, null or a scalar.
        // 3. If it is a Map or null, then we need to add the vars from allVars
        // 4. If it is a non-null value, return it.
        XmlNode? result;
        // 1. Handle oneof serialization
        final oneOfResult = reflection.oneOfs
            .where((oneof) => oneof.getter(instance).isDefined)
            .firstOrNull;
        if (oneOfResult != null) {
          result = oneOfResult.reflection.serializeFunction!(
            oneOfResult.getter(instance).valueRequired,
            context,
          ) as XmlNode?;
        }
        // 2. Handle anyof serialization
        final anyOfResults = reflection.anyOfs
            .where((anyOf) => anyOf.getter(instance).isDefined)
            .toList();
        if (anyOfResults.isNotEmpty) {
          final serializedAnyOfs = anyOfResults
              .map(
                (anyOf) => anyOf.reflection.serializeFunction!(
                  anyOf.getter(instance).valueRequired,
                  context,
                ),
              )
              .whereType<XmlNode>()
              .toList();
          // XmlElement(elementName, [XmlAttribute(name, value)]);
          for (var anyOf in serializedAnyOfs) {
            if (anyOf is XmlDocumentFragment) {
              result ??= XmlDocumentFragment([]);
              if (result is XmlDocumentFragment) {
                result.children.addAll(anyOf.children);
              } else {
                // Model is trying to mix scalar and non-scalar properties via anyof
              }
            } else {
              if (result == null) {
                result = anyOf;
              } else {
                // If the anyOfs are scalars, then we only pick the first one, since it's not possible to mix them.
              }
            }
          }
        }
        result ??= XmlElement(elementName, [], []);
        // 3. Handle properties
        if (result is XmlElement) {
          final definedProps = reflection.properties.where(
            (x) => x.getter(instance) != UndefinedWrapper.$undefinedToken,
          );
          final serializedProps = Map.fromEntries(definedProps.map(
            (propPart) => MapEntry(
              propPart.oasName,
              propPart.reflection.serializeFunction(
                propPart.getter(instance),
                context.withXmlAndOasNameContainer(propPart, propPart),
              ) as XmlNode?,
            ),
          ));

          final attributesToAdd = Map.fromEntries(
            serializedProps.entries.where(
              (element) => element.value is XmlAttribute,
            ),
          ).cast<String, XmlAttribute>();
          final childrenToAdd = Map.fromEntries(
            serializedProps.entries.where(
              (element) => element.value != null,
            ),
          ).cast<String, XmlNode>();

          // Put additional properties last so that users can override any existing property value.
          final additionalPropertiesPart = reflection.additionalPropertiesPart;
          if (additionalPropertiesPart != null) {
            final additionalProperties =
                additionalPropertiesPart.getter(instance);
            final serializedAdditionalPropertiesEntries = Map.fromEntries(
              additionalProperties.entries
                  .where(
                    (e) => e.value != UndefinedWrapper.$undefinedToken,
                  )
                  .map(
                    (e) => MapEntry(
                      e.key,
                      additionalPropertiesPart
                          .itemReflection.serializeFunction!(
                        e.value,
                        context.withXmlAndOasNameContainer(
                          additionalPropertiesPart,
                          OasNameWrapper(oasName: e.key),
                        ),
                      ) as XmlNode?,
                    ),
                  )
                  .where((e) => e.value != null),
            ).cast<String, XmlNode>();
            if (additionalPropertiesPart.xml.attribute) {
              attributesToAdd.addAll(
                Map.fromEntries(
                  serializedAdditionalPropertiesEntries.entries
                      .where((e) => e.value is XmlAttribute),
                ).cast<String, XmlAttribute>(),
              );
            } else {
              childrenToAdd.addAll(serializedAdditionalPropertiesEntries);
            }
          }
          result.children.addAll(childrenToAdd.values);
          result.attributes.addAll(attributesToAdd.values);
        }
        return result;
      },
    );
  }

  @override
  T deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    final reflection = this;
    return context.split(
      onJson: (context) {
        final result = reflection.empty();
        final discriminatorKey = reflection.discriminatorKey;
        ModelReflection<dynamic>? discriminatedReflection;
        if (src is Map<String, dynamic>) {
          final discriminatorValue = discriminatorKey == null
              ? null
              : src[discriminatorKey]?.toString();
          discriminatedReflection = discriminatorValue == null
              ? null
              : reflection.tryGetDiscriminatorModel(discriminatorValue);
          for (final prop in reflection.properties) {
            final value = src.getOrUndefined(prop.oasName);

            prop.setter(
              result,
              prop.reflection.deserializeFunction(
                value,
                context,
              ),
            );
          }
          final additionalPropertiesPart = reflection.additionalPropertiesPart;
          if (additionalPropertiesPart != null) {
            additionalPropertiesPart.setter(
              result,
              src.except(reflection.knownKeys).map(
                    (key, v) => MapEntry(
                      key,
                      additionalPropertiesPart
                          .itemReflection.deserializeFunction!(v, context),
                    ),
                  ),
            );
          }
        }
        final selectedOneOf = reflection.oneOfs.firstWhereOrNull(
          (element) => element.reflection == discriminatedReflection,
        );
        if (selectedOneOf != null) {
          selectedOneOf.setter(
            result,
            selectedOneOf.reflection.deserializeFunction!(src, context),
          );
        } else {
          for (var element in reflection.oneOfs) {
            if (element.reflection.canDeserializeFunction!(src, context)) {
              element.setter(
                result,
                element.reflection.deserializeFunction!(src, context),
              );
            }
          }
        }

        final selectedAnyOf = reflection.anyOfs.firstWhereOrNull(
          (element) => element.reflection == discriminatedReflection,
        );

        if (selectedAnyOf != null) {
          selectedAnyOf.setter(
            result,
            selectedAnyOf.reflection.deserializeFunction!(src, context),
          );
        } else {
          for (var element in reflection.anyOfs) {
            if (element.reflection.canDeserializeFunction!(src, context)) {
              element.setter(
                result,
                element.reflection.deserializeFunction!(src, context),
              );
            }
          }
        }
        return result;
      },
      onXml: (context) {
        if (src is! XmlNode) {
          throw UnimplementedError('Can only desesrialize xml nodes');
        }
        final result = reflection.empty();
        final discriminatorKey = reflection.discriminatorKey;
        final discriminatorName = discriminatorKey == null
            ? null
            : XmlName.fromString(discriminatorKey);
        XmlNode? discriminatorValue;

        final srcMap = HashMap<XmlName, List<XmlNode>>(
          equals: xmlNameEquals,
          hashCode: xmlNameHashcode,
        );
        for (final child in src.children.followedBy(src.attributes)) {
          if (child case XmlHasName namedChild) {
            final nodes = srcMap[namedChild.name] ??= [];
            nodes.add(child);
          }
        }
        final srcNormalized = HashMap<XmlName, XmlNode>(
          equals: xmlNameEquals,
          hashCode: xmlNameHashcode,
        )..addEntries(srcMap.entries.map(
            (e) => MapEntry(
              e.key,
              context.normalizeNodes(e.value),
            ),
          ));
        discriminatorValue =
            discriminatorName == null ? null : srcNormalized[discriminatorName];
        final discriminatedReflection =
            reflection.tryGetDiscriminatorModel(discriminatorValue?.value);

        for (final property in reflection.properties) {
          final propertyName = property.xml.getQualifiedName(property.oasName);
          final rawNode = srcNormalized.getOrUndefined(propertyName);
          if (property.required && !rawNode.isDefined) {
            throwArgumentRequired(propertyName.qualified);
          }
          if (rawNode.isUndefined) {
            //skip non-required undefined properties
            continue;
          }

          final node = rawNode.valueRequired;
          if (property.xml.attribute) {
            if (node is! XmlAttribute) {
              throw ArgumentError(
                'Trying to deserialize an XML attribute, but instead found a (${node.nodeType}).',
              );
            }
          }
          final propertyValue = property.reflection.deserializeFunction(
            node,
            context.withXmlAndOasNameContainer(property, property),
          );
          property.setter(result, propertyValue);
        }
        final additionalPropertiesPart = reflection.additionalPropertiesPart;
        if (additionalPropertiesPart != null) {
          final additionalProperties =
              additionalPropertiesPart.reflection.emptyFunction();
          final knownKeys = reflection.properties
              .map((e) => e.xml.getQualifiedName(e.oasName))
              .toSet();
          for (final MapEntry(:key, value: node) in srcNormalized.entries) {
            if (knownKeys.contains(key)) {
              continue;
            }
            if (key.prefix != additionalPropertiesPart.xml.prefix) {
              continue;
            }
            if (additionalPropertiesPart.xml.prefix != null &&
                additionalPropertiesPart.xml.namespace != null) {
              if (key.namespaceUri != additionalPropertiesPart.xml.namespace) {
                // skip if the namespace is not correct
                continue;
              }
            }

            additionalProperties[key.local] =
                additionalPropertiesPart.reflection.deserializeFunction!(
              node,
              context.withXmlAndOasNameContainer(
                additionalPropertiesPart,
                OasNameWrapper(oasName: key.local),
              ),
            );
          }
          additionalPropertiesPart.setter(result, additionalProperties);
        }

        final selectedOneOf = reflection.oneOfs.firstWhereOrNull(
          (element) => element.reflection == discriminatedReflection,
        );
        if (selectedOneOf != null) {
          selectedOneOf.setter(
            result,
            selectedOneOf.reflection.deserializeFunction!(src, context),
          );
        } else {
          for (var element in reflection.oneOfs) {
            if (element.reflection.canDeserializeFunction!(src, context)) {
              element.setter(result,
                  element.reflection.deserializeFunction!(src, context));
            }
          }
        }

        final selectedAnyOf = reflection.anyOfs.firstWhereOrNull(
          (element) => element.reflection == discriminatedReflection,
        );

        if (selectedAnyOf != null) {
          selectedAnyOf.setter(
            result,
            selectedAnyOf.reflection.deserializeFunction!(src, context),
          );
        } else {
          for (var element in reflection.anyOfs) {
            if (element.reflection.canDeserializeFunction!(src, context)) {
              element.setter(result,
                  element.reflection.deserializeFunction!(src, context));
            }
          }
        }
        return result;
      },
    );
  }

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    final reflection = this;
    return context.split(
      onJson: (context) {
        final discriminatorKey = reflection.discriminatorKey;
        Object? discriminatorValue;
        ModelReflection<dynamic>? discriminatedReflection;

        if (src is Map<String, dynamic>) {
          discriminatorValue =
              discriminatorKey == null ? null : src[discriminatorKey];
          discriminatedReflection = reflection
              .tryGetDiscriminatorModel(discriminatorValue?.toString());

          for (final propPart in reflection.properties) {
            final value = src.getOrUndefined(propPart.oasName);
            if (value.isUndefined && propPart.required) {
              return false;
            }
            if (!propPart.reflection.canDeserializeFunction!(
              value,
              context,
            )) {
              return false;
            }
          }
          if (reflection.additionalPropertiesPart != null &&
              !src.except(reflection.knownKeys).values.every(
                    (v) => reflection.additionalPropertiesPart!.reflection
                        .canDeserializeFunction!(v, context),
                  )) {
            return false;
          }
        } else {
          if (reflection.properties.any((e) => e.required)) {
            return false;
          }
        }

        final selectedOneOf = discriminatedReflection == null
            ? null
            : reflection.oneOfs.firstWhereOrNull(
                (element) => element.reflection == discriminatedReflection,
              );
        if (selectedOneOf != null) {
          if (!selectedOneOf.reflection.canDeserializeFunction!(src, context)) {
            return false;
          }
        } else {
          int counter = 0;
          for (var element in reflection.oneOfs) {
            if (element.reflection.canDeserializeFunction!(src, context)) {
              counter++;
            }
          }
          if (counter > 1) {
            return false;
          }
        }

        return true;
      },
      onXml: (context) {
        if (src is! XmlNode) {
          return false;
        }
        final discriminatorKey = reflection.discriminatorKey;
        final discriminatorName = discriminatorKey == null
            ? null
            : XmlName.fromString(discriminatorKey);
        XmlNode? discriminatorValue;
        // step 1: prepare the src object by grouping it into a srcMap where the key
        // is the fully qualified name of the node and the value is a list of nodes
        // or attributes with the same name.
        final srcMap = HashMap<XmlName, List<XmlNode>>(
          equals: xmlNameEquals,
          hashCode: xmlNameHashcode,
        );
        for (final child in src.children.followedBy(src.attributes)) {
          if (child case XmlHasName namedChild) {
            final nodes = srcMap[namedChild.name] ??= [];
            nodes.add(child);
          }
        }
        final srcNormalized = HashMap<XmlName, XmlNode>(
          equals: xmlNameEquals,
          hashCode: xmlNameHashcode,
        )..addEntries(srcMap.entries.map(
            (e) => MapEntry(
              e.key,
              context.normalizeNodes(e.value),
            ),
          ));
        discriminatorValue =
            discriminatorName == null ? null : srcNormalized[discriminatorName];
        final discriminatedReflection =
            reflection.tryGetDiscriminatorModel(discriminatorValue?.value);
        for (final property in reflection.properties) {
          final propertyName = property.xml.getQualifiedName(property.oasName);
          final rawNode = srcNormalized.getOrUndefined(propertyName);
          if (property.required && !rawNode.isDefined) {
            return false;
          }
          if (rawNode.isUndefined) {
            //skip non-required undefined properties
            continue;
          }

          final node = rawNode.valueRequired;
          if (property.xml.attribute) {
            if (node is! XmlAttribute) {
              return false;
            }
          }
          if (!property.reflection.canDeserializeFunction(
            node,
            context.withXmlAndOasNameContainer(property, property),
          )) {
            return false;
          }
        }
        final additionalPropertiesPart = reflection.additionalPropertiesPart;
        if (additionalPropertiesPart != null) {
          final knownKeys = reflection.properties
              .map((e) => e.xml.getQualifiedName(e.oasName))
              .toSet();
          for (final MapEntry(:key, value: node) in srcNormalized.entries) {
            if (knownKeys.contains(key)) {
              continue;
            }

            if (key.prefix != additionalPropertiesPart.xml.prefix) {
              continue;
            }
            if (additionalPropertiesPart.xml.prefix != null &&
                additionalPropertiesPart.xml.namespace != null) {
              if (key.namespaceUri != additionalPropertiesPart.xml.namespace) {
                // skip if the namespace is not correct
                continue;
              }
            }

            if (!additionalPropertiesPart
                .itemReflection.canDeserializeFunction!(
              node,
              context.withXmlAndOasNameContainer(
                additionalPropertiesPart,
                OasNameWrapper(oasName: key.local),
              ),
            )) {
              return false;
            }
          }
        }

        final selectedOneOf = reflection.oneOfs.firstWhereOrNull(
          (element) => element.reflection == discriminatedReflection,
        );
        if (selectedOneOf != null) {
          if (!selectedOneOf.reflection.canDeserializeFunction!(src, context)) {
            return false;
          }
        } else {
          int counter = 0;
          for (var element in reflection.oneOfs) {
            if (element.reflection.canDeserializeFunction(src, context)) {
              counter++;
            }
          }
          if (counter > 1) {
            return false;
          }
        }

        return true;
      },
    );
  }
}

mixin PartReflectionMixin<TParent, T> {
  SerializationReflection<T> get reflection;
  ModelReflection<TParent> Function() get parentReflectionGetter;

  FunctionWrapper1<T, TParent> get getter;
  FunctionWrapper2<void, TParent, T> get setter;
}

abstract class PartReflection<TParent, T> with PartReflectionMixin<TParent, T> {
  const PartReflection({
    required this.parentReflectionGetter,
  });

  final ModelReflection<TParent> Function() parentReflectionGetter;
}

// class ItemsReflection<TParent, T> extends PartReflection<TParent, T>
//     with HasXmlReflection {
//   const ItemsReflection({
//     // super.deserializeFunction,
//     // super.serializeFunction,
//     // super.canDeserializeFunction,
//     super.reflection,
//     super.parentReflectionGetter,
//     // super.itemsReflection,
//     this.xml = const XmlReflection(),
//   });
//   @override
//   final XmlReflection xml;
// }

class PropertyReflection<TParent, T> extends PartReflection<TParent, T>
    with HasXmlReflection, HasOasName {
  const PropertyReflection({
    required this.dartName,
    required this.oasName,
    required this.oasType,
    required this.required,
    required this.nullable,
    required this.reflection,
    required super.parentReflectionGetter,
    this.$default,
    this.pattern,
    this.xml = const XmlReflection(),
    required this.getter,
    required this.setter,
    required this.isDiscriminator,
  });

  @override
  final SerializationReflection<T> reflection;

  @override
  final XmlReflection xml;
  final String dartName;
  @override
  final String oasName;
  final String oasType;
  final bool required;
  final bool nullable;
  final Object? $default;
  final String? pattern;

  @override
  final FunctionWrapper1<T, TParent> getter;
  @override
  final FunctionWrapper2<void, TParent, T> setter;
  final bool isDiscriminator;
}

class AdditionalPropertiesPart<TParent, T>
    extends PartReflection<TParent, Map<String, T>> with HasXmlReflection {
  const AdditionalPropertiesPart({
    required this.getter,
    required this.setter,
    required super.parentReflectionGetter,
    required this.itemReflection,
    this.xml = const XmlReflection(),
  });

  final SerializationReflection<T> itemReflection;

  @override
  SerializationReflection<Map<String, T>> get reflection =>
      MapReflection(itemReflection);

  final XmlReflection xml;
  @override
  final FunctionWrapper1<AdditionalProperties<T>, TParent> getter;
  @override
  final FunctionWrapper2<void, TParent, AdditionalProperties<T>> setter;
}

abstract class OneOfReflection<TParent, T> extends PartReflection<TParent, UndefinedWrapper<T>> {
  const OneOfReflection({
    required super.parentReflectionGetter,
  });

  @override
  UndefinedWrapperReflection<T> get reflection;
}

abstract class AnyOfReflection<TParent, T> extends PartReflection<TParent, UndefinedWrapper<T>> {
  const AnyOfReflection({
    required super.parentReflectionGetter,
  });

  @override
  UndefinedWrapperReflection<T> get reflection;
}

class AllOfReflection<TParent extends T, T>
    with PartReflectionMixin<TParent, T> {
  const AllOfReflection({
    required this.parentReflectionGetter,
    required ModelReflection<T> this.reflection,
  });
  @override
  final ModelReflection<T> reflection;
  final ModelReflection<TParent> Function() parentReflectionGetter;

  @override
  FunctionWrapper1<T, TParent> get getter =>
      FunctionWrapper1((TParent src) => src);

  @override
  FunctionWrapper2<void, TParent, T> get setter =>
      FunctionWrapper2((a, b) => null);
}
