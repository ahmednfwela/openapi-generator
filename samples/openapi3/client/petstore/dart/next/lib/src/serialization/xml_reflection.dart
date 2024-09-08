import 'package:petstore_api/_internal.dart';
import 'package:collection/collection.dart';


mixin HasXmlReflection {
  XmlReflection get xml;
}

class XmlReflection {
  const XmlReflection({
    this.xmlName,
    this.namespace,
    this.prefix,
    this.attribute = false,
    this.wrapped = false,
  });

  final String? xmlName;
  final String? namespace;
  final String? prefix;
  final bool attribute;
  final bool wrapped;

  XmlName getQualifiedName(String fallbackName) {
    return XmlName(xmlName ?? fallbackName, prefix);
  }

  XmlName? getQualifiedNameOrNull(String? fallbackName) {
    final actualName = xmlName ?? fallbackName;
    if (actualName == null) {
      return null;
    }
    return XmlName(actualName, prefix);
  }

  XmlAttribute? getXmlNamespaceAttribute() {
    if (prefix == null || namespace == null) {
      return null;
    }
    return XmlAttribute(XmlName(prefix!, 'xmlns'), namespace!);
  }
}


class XmlReflectionWrapper<T> extends ContainerReflection<T, T>
    with HasXmlReflection {
  const XmlReflectionWrapper(
    super.subReflection, {
    required this.xml,
  });

  final XmlReflection xml;

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => subReflection.canDeserializeFunction(src, context),
      onXml: (context) {
        if (src is MapEntry<XmlReflection, Object?>) {
          return subReflection.canDeserializeFunction(
            src.value,
            context.withXmlContainer(this),
          );
        }
        return subReflection.canDeserializeFunction(
          src,
          context.withXmlContainer(this),
        );
      },
    );
  }

  @override
  T deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) {
        return subReflection.deserializeFunction(src, context);
      },
      onXml: (context) {
        if (src is MapEntry<XmlReflection, Object?>) {
          return subReflection.deserializeFunction(
            src.value,
            context.withXmlContainer(this),
          );
        }
        return subReflection.deserializeFunction(
          src,
          context.withXmlContainer(this),
        );
      },
    );
  }

  @override
  Object? serialize(
    T src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => subReflection.serializeFunction(src, context),
      onXml: (context) {
        return MapEntry(
          xml,
          subReflection.serializeFunction(
            src,
            context.withXmlContainer(this),
          ),
        );
      },
    );
  }

  @override
  T empty() {
    return subReflection.emptyFunction();
  }

  @override
  T example([ExampleContext? context]) {
    return subReflection.exampleFunction(context);
  }

  @override
  T clone(T src) {
    return subReflection.cloneFunction(src);
  }

  @override
  Equality<T> get equality => subReflection.equality;
}
