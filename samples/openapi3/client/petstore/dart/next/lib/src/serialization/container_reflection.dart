import 'package:petstore_api/_internal.dart'hide e;
import 'dart:collection';

const $FreeFormObjectReflection =
    MapReflection(NullableReflection(ObjectReflection()));

abstract class ContainerReflection<T, TItem> extends PrimitiveReflection<T> {
  const ContainerReflection(this.subReflection);

  final SerializationReflection<TItem> subReflection;
}

class MapReflection<T> extends ContainerReflection<Map<String, T>, T> {
  const MapReflection(super.subReflection);

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) =>
          src is Map<String, Object?> &&
          src.values
              .every((v) => subReflection.canDeserializeFunction(v, context)),
      onXml: (context) => src is XmlNode,
    );
  }

  @override
  Map<String, T> deserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) => (src as Map<String, Object?>).map((key, value) =>
          MapEntry(key, subReflection.deserializeFunction(value, context))),
      onXml: (context) {
        final node = src as XmlNode;

        final srcMap = HashMap<XmlName, List<XmlNode>>(
          equals: xmlNameEquals,
          hashCode: xmlNameHashcode,
        );

        for (final child in node.children.followedBy(node.attributes)) {
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

        return srcNormalized.map(
          (key, value) => MapEntry(
            key.local,
            (value is XmlAttribute &&
                    value.name.prefix == 'xsi' &&
                    value.name.local == 'nil' &&
                    bool.parse(value.value.toString()) == true)
                ? null as T
                : subReflection.deserializeFunction(value, context),
          ),
        );
      },
    );
  }

  @override
  Object? serialize(
    Map<String, T> src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    // serialize all entries with the following rules:
    // 1. undefined values are removed
    // 3. other values are serialized using ObjectReflection
    return context.split(
      onJson: (context) {
        return Map.fromEntries(src
            .map((key, value) =>
                MapEntry(key, subReflection.serializeFunction(value, context)))
            .entries
            .where((e) => e.value != UndefinedWrapper.$undefinedToken));
      },
      onXml: (context) {
        final xml = context.xmlContainer?.xml;
        final resultNodes = <XmlNode>[];
        for (var e in src.entries) {
          final value = e.value;
          final name =
              xml?.getQualifiedName(e.key) ?? XmlName.fromString(e.key);
          final valueSerialized =
              subReflection.serializeFunction(value, context);
          if (valueSerialized == UndefinedWrapper.$undefinedToken) {
            continue;
          }
          resultNodes.add(XmlElement(
            name,
            // attributes
            [
              if (valueSerialized == null)
                XmlSerializationContext.nilXmlAttribute
              else if (valueSerialized is XmlAttribute)
                valueSerialized,
            ],
            // children
            [
              if (valueSerialized is XmlNode) valueSerialized,
            ],
          ));
        }
        return XmlDocumentFragment(resultNodes);
      },
    );
  }

  @override
  Map<String, T> empty() => {};

  @override
  Map<String, T> example([ExampleContext? context]) =>
      Map.fromEntries((ListReflection(subReflection).exampleFunction(context))
          .map((e) => MapEntry(const StringReflection().example(context), e)));
}

class ListReflection<T> extends ContainerReflection<List<T>, T> {
  const ListReflection(super.subReflection);

  @override
  bool canDeserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) =>
          src is Iterable<Object?> &&
          src.every((v) => subReflection.canDeserializeFunction(v, context)),
      // TODO: xml should check if node represents a `null` , e.g. <xsi:nil />
      onXml: (context) =>
          src is XmlNode &&
          src.children
              .every((v) => subReflection.canDeserializeFunction(v, context)),
    );
  }

  @override
  List<T> deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => (src as Iterable<Object?>)
          .map((value) => subReflection.deserializeFunction(value, context))
          .where((x) => x != UndefinedWrapper.$undefinedToken)
          .toList(),
      onXml: (context) {
        final node = src as XmlNode;
        final children = node.children;
        return children
            .map((v) => subReflection.deserializeFunction(v, context))
            .where((x) => x != UndefinedWrapper.$undefinedToken)
            .toList();
      },
    );
  }

  @override
  Object? serialize(
    List<T> src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    // serialize all values with the following rules:
    // 1. undefined values are removed
    // 2. nulls are persisted
    // 3. other values are serialized using ObjectReflection
    return context.split(
      onJson: (context) => src
          .map((value) => subReflection.serializeFunction(value, context))
          .where((x) => x != UndefinedWrapper.$undefinedToken),
      onXml: (context) {
        return XmlDocumentFragment([
          ...src
              .map((value) => subReflection.serializeFunction(value, context))
              .where((element) => element != UndefinedWrapper.$undefinedToken)
              .whereType<XmlNode>()
        ]);
      },
    );
  }

  @override
  List<T> empty() => <T>[];

  @override
  List<T> example([ExampleContext? context]) => List.generate(
        (context ??= ExampleContext()).random.nextInt(10),
        (_) => subReflection.exampleFunction(context),
      );
}

class SetReflection<T> extends ContainerReflection<Set<T>, T> {
  const SetReflection(super.subReflection);

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return ListReflection(subReflection).canDeserialize(src, context);
  }

  @override
  Set<T> deserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return ListReflection(subReflection).deserialize(src, context).toSet();
  }

  @override
  Object? serialize(
    Set<T> src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return ListReflection(subReflection).serialize(src.toList(), context);
  }

  @override
  Set<T> empty() => {};

  @override
  Set<T> example([ExampleContext? context]) => ListReflection(subReflection).example(context).toSet();
}

class NullableReflection<T> extends ContainerReflection<T?, T> {
  const NullableReflection(super.subReflection);

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => src == null
          ? true
          : subReflection.canDeserializeFunction(src, context),
      onXml: (context) => /*TODO: add logic to handle nulls.*/
          subReflection.canDeserializeFunction(src, context),
    );
  }

  @override
  T? deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split<T?>(
      onJson: (context) =>
          src == null ? null : subReflection.deserializeFunction(src, context),
      onXml: (context) => /*TODO: add logic to handle nulls.*/
          subReflection.deserializeFunction(src, context),
    );
  }

  @override
  Object? serialize(T? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) =>
          src == null ? null : subReflection.serializeFunction(src, context),
      onXml: (context) => src == null
          ? context.xmlContainer?.xml.attribute == true
              ? XmlSerializationContext.nilXmlAttribute
              : XmlSerializationContext.nilXmlElement
          : subReflection.serializeFunction(src, context),
    );
  }

  @override
  T? empty() => null;

  @override
  T? example([ExampleContext? context]) =>
      (context ??= ExampleContext()).random.nextBool() ? subReflection.exampleFunction(context) : null;
}

class UndefinedWrapperReflection<T>
    extends ContainerReflection<UndefinedWrapper<T>, T> {
  const UndefinedWrapperReflection(super.subReflection);

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return src == UndefinedWrapper.$undefinedToken
        ? true
        : subReflection.canDeserializeFunction(src, context);
  }

  @override
  UndefinedWrapper<T> deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return src == UndefinedWrapper.$undefinedToken
        ? const UndefinedWrapper.undefined()
        : UndefinedWrapper(subReflection.deserializeFunction(src, context));
  }

  @override
  Object? serialize(
    UndefinedWrapper<T> src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return src.map(
      (src) => subReflection.serializeFunction(src, context),
    );
  }

  @override
  UndefinedWrapper<T> empty() => const UndefinedWrapper.undefined();

  @override
  UndefinedWrapper<T> example([ExampleContext? context]) => (context ??= ExampleContext()).random.nextBool()
      ? UndefinedWrapper(subReflection.exampleFunction(context))
      : const UndefinedWrapper.undefined();
}
