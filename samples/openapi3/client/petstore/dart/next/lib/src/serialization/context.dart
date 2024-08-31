import 'package:petstore_api/_internal.dart';

enum SupportedWireTypes {
  other,
  json,
  xml,
}

int xmlNameHashcode(XmlName a) {
  return Object.hash(a.local, a.namespaceUri, a.prefix);
}

bool xmlNameEquals(XmlName a, XmlName b) {
  return a.local == b.local &&
      a.namespaceUri == b.namespaceUri &&
      a.prefix == b.prefix;
}

typedef ValueConverterFunction = Object? Function(Object? value);
typedef ValueConverterCheckerFunction = bool Function(Object? value);
typedef FileBytesSyncResolver = Uint8List? Function(XFile file);

/// This function is used to check if a generic type T1 can be assigned to a generic type T2.
///
/// e.g. a value of type int can be assigned to a value of type num
/// isOfType<int, num>() == true
/// but not the opposite
/// isOfType<num, int>() == true
///
/// This also works for deeply nested objects
/// isOfType<List<List<int>>, List<List<num>>>() == true
bool isOfType<T1, T2>() {
  return (_fakeFunction<T1>) is T2 Function();
}

TItem Function() extractIterableType<T extends Iterable<TItem>, TItem>() {
  return _fakeFunction<TItem>;
}

/// This function is used to check if a generic type T can accept a null value.
bool isNullableType<T>() {
  return null is T;
}

/// This function will NEVER be called.
T _fakeFunction<T>() {
  return null as T;
}

abstract class SerializationContext {
  const SerializationContext({
    this.serializeUnknownValue,
    this.deserializeUnknownValue,
    this.canDeserializeUnknownValue,
    this.fileBytesResolver,
  });

  SerializationContext copyWith({
    ValueConverterFunction? serializeUnknownValue,
    ValueConverterFunction? deserializeUnknownValue,
    ValueConverterCheckerFunction? canDeserializeUnknownValue,
    FileBytesSyncResolver? fileBytesResolver,
  });

  /// Creates a json serialization context, where the target is to output
  /// types that can be passed to jsonEncode and jsonDecode.
  ///
  /// If a value can not be serialized or deserialized,
  /// [serializeUnknownValue], [canDeserializeUnknownValue] and [deserializeUnknownValue] will be used to get the value.
  const factory SerializationContext.json({
    ValueConverterFunction? serializeUnknownValue,
    ValueConverterFunction? deserializeUnknownValue,
    ValueConverterCheckerFunction? canDeserializeUnknownValue,
    FileBytesSyncResolver? fileBytesResolver,
  }) = JsonSerializationContext;

  /// Creates an XML serialization context, where the target is to output
  /// either a string or an XmlElement.
  ///
  /// If a value can not be serialized or deserialized,
  /// [serializeUnknownValue], [canDeserializeUnknownValue] and [deserializeUnknownValue] will be used to get the value.
  const factory SerializationContext.xml({
    ValueConverterFunction? serializeUnknownValue,
    ValueConverterFunction? deserializeUnknownValue,
    ValueConverterCheckerFunction? canDeserializeUnknownValue,
    FileBytesSyncResolver? fileBytesResolver,
    HasXmlReflection? xmlContainer,
    HasOasName? oasNameContainer,
  }) = XmlSerializationContext;

  final ValueConverterFunction? serializeUnknownValue;
  final ValueConverterFunction? deserializeUnknownValue;
  final ValueConverterCheckerFunction? canDeserializeUnknownValue;

  /// Try to resolve the bytes of a file synchronously, if not possible, return null.
  final FileBytesSyncResolver? fileBytesResolver;

  SupportedWireTypes get wireType;
  bool get isJson => wireType == SupportedWireTypes.json;
  bool get isXml => wireType == SupportedWireTypes.xml;

  T split<T>({
    required T Function(JsonSerializationContext context) onJson,
    required T Function(XmlSerializationContext context) onXml,
    T Function(SerializationContext context)? onOther,
  }) {
    return switch (this) {
      JsonSerializationContext json => onJson(json),
      XmlSerializationContext xml => onXml(xml),
      _ => onOther == null ? throw UnimplementedError() : onOther(this),
    };
  }
}

class JsonSerializationContext extends SerializationContext {
  const JsonSerializationContext({
    super.serializeUnknownValue,
    super.deserializeUnknownValue,
    super.canDeserializeUnknownValue,
    super.fileBytesResolver,
  });

  @override
  SupportedWireTypes get wireType => SupportedWireTypes.json;

  @override
  JsonSerializationContext copyWith({
    ValueConverterFunction? serializeUnknownValue,
    ValueConverterFunction? deserializeUnknownValue,
    ValueConverterCheckerFunction? canDeserializeUnknownValue,
    FileBytesSyncResolver? fileBytesResolver,
  }) =>
      JsonSerializationContext(
        serializeUnknownValue:
            serializeUnknownValue ?? this.serializeUnknownValue,
        deserializeUnknownValue:
            deserializeUnknownValue ?? this.deserializeUnknownValue,
        canDeserializeUnknownValue:
            canDeserializeUnknownValue ?? this.canDeserializeUnknownValue,
        fileBytesResolver: fileBytesResolver ?? this.fileBytesResolver,
      );
}

class XmlSerializationContext extends SerializationContext {
  const XmlSerializationContext({
    super.serializeUnknownValue,
    super.deserializeUnknownValue,
    super.canDeserializeUnknownValue,
    super.fileBytesResolver,
    this.xmlContainer,
    this.oasNameContainer,
  });

  static final nilXmlName = XmlName("nil", "xsi");
  static final nilXmlAttribute = XmlAttribute(nilXmlName, 'true');
  static final nilXmlElement = XmlElement(nilXmlName, [], [XmlText("true")]);

  @override
  SupportedWireTypes get wireType => SupportedWireTypes.xml;

  final HasXmlReflection? xmlContainer;
  final HasOasName? oasNameContainer;

  XmlSerializationContext withXmlAndOasNameContainer(
    HasXmlReflection? xmlContainer,
    HasOasName? oasNameContainer,
  ) {
    return XmlSerializationContext(
      serializeUnknownValue: serializeUnknownValue,
      deserializeUnknownValue: deserializeUnknownValue,
      canDeserializeUnknownValue: canDeserializeUnknownValue,
      fileBytesResolver: fileBytesResolver,
      xmlContainer: xmlContainer,
      oasNameContainer: oasNameContainer,
    );
  }

  XmlSerializationContext withXmlContainer(HasXmlReflection? xmlContainer) {
    return XmlSerializationContext(
      serializeUnknownValue: serializeUnknownValue,
      deserializeUnknownValue: deserializeUnknownValue,
      canDeserializeUnknownValue: canDeserializeUnknownValue,
      fileBytesResolver: fileBytesResolver,
      xmlContainer: xmlContainer,
      oasNameContainer: oasNameContainer,
    );
  }

  XmlSerializationContext withOasNameContainer(HasOasName? oasNameContainer) {
    return XmlSerializationContext(
      serializeUnknownValue: serializeUnknownValue,
      deserializeUnknownValue: deserializeUnknownValue,
      canDeserializeUnknownValue: canDeserializeUnknownValue,
      fileBytesResolver: fileBytesResolver,
      xmlContainer: xmlContainer,
      oasNameContainer: oasNameContainer,
    );
  }

  @override
  XmlSerializationContext copyWith({
    ValueConverterFunction? serializeUnknownValue,
    ValueConverterFunction? deserializeUnknownValue,
    ValueConverterCheckerFunction? canDeserializeUnknownValue,
    FileBytesSyncResolver? fileBytesResolver,
    HasXmlReflection? xmlContainer,
    HasOasName? oasNameContainer,
  }) =>
      XmlSerializationContext(
        serializeUnknownValue:
            serializeUnknownValue ?? this.serializeUnknownValue,
        deserializeUnknownValue:
            deserializeUnknownValue ?? this.deserializeUnknownValue,
        canDeserializeUnknownValue:
            canDeserializeUnknownValue ?? this.canDeserializeUnknownValue,
        fileBytesResolver: fileBytesResolver ?? this.fileBytesResolver,
        xmlContainer: xmlContainer ?? this.xmlContainer,
        oasNameContainer: oasNameContainer ?? this.oasNameContainer,
      );

  XmlNode normalizeNodes(List<XmlNode> nodes) {
    return nodes.isEmpty
        ? throw ArgumentError.value(
            nodes,
            'nodes',
            'impossible case for normalizeNodes to be empty.',
          )
        : nodes.length == 1
            ? nodes.first
            : XmlDocumentFragment(nodes);
  }
}
