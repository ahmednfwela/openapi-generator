import 'package:petstore_api/_internal.dart';
typedef $FreeFormObject = Map<String, Object?>;
typedef AdditionalProperties<T> = Map<String, T>;

extension OASMapExtensions<TKey, TValue> on Map<TKey, TValue> {
  Map<TKey, TValue> except(Set<TKey> toRemove) =>
      Map.fromEntries(entries.where((e) => !toRemove.contains(e.key)));
}

/// Mixin to mark objects as having additional properties.
mixin AdditionalPropertiesMixin<T> on $OpenApiObjectMixin {
  /// A special field containing properties that are not explicitly defined by the schema,
  /// but are included in the serialization process.
  ///
  /// These are NOT considered a separate field, but rather an extension of the schema.
  AdditionalProperties<T> get additionalProperties;
}

/// An openapi object that has no known properties.
class UnknownOpenApiObject
    with $OpenApiObjectMixin, AdditionalPropertiesMixin<Object?> {
  UnknownOpenApiObject({
    AdditionalProperties<Object?>? additionalProperties,
  }) : additionalProperties = additionalProperties ?? {};

  AdditionalProperties<Object?> additionalProperties;

  Object? serialize([
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return $classReflection.serialize(this);
  }

  @override
  UnknownOpenApiObjectReflection get $classReflection =>
      const UnknownOpenApiObjectReflection();

  static Object? serializeInstance(
    UnknownOpenApiObject src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return src.serialize(context);
  }

  static bool canDeserialize(
    Object? src, [
    SerializationContext = const SerializationContext.json(),
  ]) {
    return true;
  }

  static UnknownOpenApiObject deserialize(
    Object? src, [
    SerializationContext = const SerializationContext.json(),
  ]) {
    return UnknownOpenApiObject(
      additionalProperties: src is Map<String, Object?> ? src : {},
    );
  }
}

class UnknownOpenApiObjectReflection
    extends ModelReflection<UnknownOpenApiObject> {
  const UnknownOpenApiObjectReflection();

  @override
  String get className => 'UnkownOpenApiObject';

  @override
  AdditionalPropertiesPart<UnknownOpenApiObject, Object?>?
      get additionalPropertiesPart => AdditionalPropertiesPart(
            getter: FunctionWrapper1(additionalPropertiesGetter),
            setter: FunctionWrapper2(additionalPropertiesSetter),
            itemReflection: NullableReflection(ObjectReflection()),
            parentReflectionGetter: () => this,
          );

  Map<String, Object?> additionalPropertiesGetter(UnknownOpenApiObject src) {
    return src.additionalProperties;
  }

  void additionalPropertiesSetter(
    UnknownOpenApiObject src,
    Map<String, Object?> value,
  ) {
    src.additionalProperties = value;
  }

  @override
  Map<String, ModelReflection> get discriminatorImplicitMappings => {};

  @override
  String? get discriminatorKey => null;

  @override
  Map<String, ModelReflection> get discriminatorMappings => {};

  @override
  UnknownOpenApiObject empty() {
    return UnknownOpenApiObject(
      additionalProperties: {},
    );
  }

  @override
  UnknownOpenApiObject example([ExampleContext? context]) {
    return UnknownOpenApiObject(
      additionalProperties:
          const MapReflection(NullableReflection(ObjectReflection())).example(context),
    );
  }

  @override
  String get modelName => '';

  @override
  List<PropertyReflection<UnknownOpenApiObject, dynamic>> get properties =>
      const [];

  @override
  XmlReflection get xml => XmlReflection();
}
