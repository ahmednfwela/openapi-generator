import 'package:petstore_api/_internal.dart';

import 'package:collection/collection.dart';

abstract class PrimitiveReflection<T>
    with
        SerializationReflection<T>,
        InheritanceBasedSerializationReflection<T> {
  const PrimitiveReflection();

  static const fornum = NumReflection();
  static const forint = IntReflection();
  static const fordouble = DoubleReflection();
  static const forbool = BoolReflection();
  static const forString = StringReflection();
  static const forUint8List = Uint8ListReflection();
  static const forDateTime = DateTimeReflection();
  static const forXFile = XFileReflection();
  static const forObject = ObjectReflection();
  static const for$FreeFormObject = $FreeFormObjectReflection;
}


class ObjectReflection extends PrimitiveReflection<Object> {
  const ObjectReflection();
  static const recognizedReflections = <SerializationReflection>[
    PrimitiveReflection.fornum,
    PrimitiveReflection.forbool,
    PrimitiveReflection.forString,
    PrimitiveReflection.forUint8List,
    PrimitiveReflection.forDateTime,
    PrimitiveReflection.forXFile,
    ListReflection(NullableReflection(ObjectReflection())),
    MapReflection(NullableReflection(ObjectReflection())),
    SetReflection(NullableReflection(ObjectReflection())),
  ];

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    // If deserialization fails we just return the object itself
    return true;
  }

  @override
  Object deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    // First, attempt deserialization of recognized primitives
    var subReflection = recognizedReflections
        .firstWhereOrNull((x) => x.canDeserializeFunction(src, context));
    if (subReflection == null) {
      //return it as is.
      return src as Object;
    }
    return subReflection.deserializeFunction(src, context);
  }

  @override
  Object? serialize(
    Object src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    if (src is $OpenApiObjectMixin) {
      return src.$classReflection.serializeFunction(src, context);
    }
    final subReflection =
        recognizedReflections.firstWhereOrNull((x) => x.isInstanceOfType(src));
    if (subReflection == null) {
      //return it as is.
      return src;
    }
    return subReflection.serializeFunction(src, context);
  }

  @override
  Object empty() => 0;
  @override
  Object example([ExampleContext? context]) {
    context ??= ExampleContext();
    final selectedReflectionIndex =
        context.random.nextInt(recognizedReflections.length);
    return recognizedReflections[selectedReflectionIndex].exampleFunction(context);
  }
}

class NumReflection extends PrimitiveReflection<num> {
  const NumReflection();

  @override
  bool canDeserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) =>
          src is num || (src is String && num.tryParse(src as String) != null),
      onXml: (context) =>
          src is XmlNode &&
          src.value != null &&
          num.tryParse(src.value!) != null,
    );
  }

  @override
  num deserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) => src is num ? src : num.parse(src.toString()),
      onXml: (context) => num.parse((src as XmlNode).value!),
    );
  }

  @override
  Object? serialize(num src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) => src,
      onXml: (context) => XmlText(src.toString()),
    );
  }

  @override
  num empty() => 0;

  @override
  num example([ExampleContext? context]) {
    return (context ??= ExampleContext()).random.nextDouble();
  }
}

class IntReflection extends PrimitiveReflection<int> {
  const IntReflection();

  @override
  bool canDeserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) =>
          src is int || (src is String && int.tryParse(src as String) != null),
      onXml: (context) =>
          src is XmlNode &&
          src.value != null &&
          int.tryParse(src.value!) != null,
    );
  }

  @override
  int deserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) => src is int ? src : int.parse(src.toString()),
      onXml: (context) => int.parse((src as XmlNode).value!),
    );
  }

  @override
  Object? serialize(int src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) => src,
      onXml: (context) => XmlText(src.toString()),
    );
  }

  @override
  int empty() => 0;

  @override
  int example([ExampleContext? context]) => (context ??= ExampleContext()).random.nextInt(100);
}

class DoubleReflection extends PrimitiveReflection<double> {
  const DoubleReflection();

  @override
  bool canDeserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) =>
          src is num ||
          (src is String && double.tryParse(src as String) != null),
      onXml: (context) =>
          src is XmlNode &&
          src.value != null &&
          num.tryParse(src.value!) != null,
    );
  }

  @override
  double deserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) =>
          (src is num ? src : num.parse(src.toString())).toDouble(),
      onXml: (context) => double.parse((src as XmlNode).value!),
    );
  }

  @override
  Object? serialize(double src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) => src,
      onXml: (context) => XmlText(src.toString()),
    );
  }

  @override
  double empty() => 0;

  @override
  double example([ExampleContext? context]) =>  (context ??= ExampleContext()).random.nextDouble();
}

class StringReflection extends PrimitiveReflection<String> {
  const StringReflection();

  @override
  bool canDeserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) => true,
      onXml: (context) => src is XmlNode && src.value != null,
    );
  }

  @override
  String deserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) => src.toString(),
      onXml: (context) => (src as XmlNode).value!,
    );
  }

  @override
  Object? serialize(String src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) => src,
      onXml: (context) => XmlText(src),
    );
  }

  @override
  String empty() => "";

  @override
  String example([ExampleContext? context]) => 'Random string ${(context ??= ExampleContext()).random.nextInt(100)}';
}

class BoolReflection extends PrimitiveReflection<bool> {
  const BoolReflection();

  @override
  bool canDeserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) =>
          src is bool ||
          (src is String && bool.tryParse(src.toString()) != null),
      onXml: (context) =>
          src is XmlNode &&
          src.value != null &&
          bool.tryParse(src.value!) != null,
    );
  }

  @override
  bool deserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) => src is bool ? src : bool.parse(src.toString()),
      onXml: (context) => bool.parse((src as XmlNode).value!),
    );
  }

  @override
  Object? serialize(bool src,
      [SerializationContext context = const SerializationContext.json()]) {
    return context.split(
      onJson: (context) => src,
      onXml: (context) => XmlText(src.toString()),
    );
  }

  @override
  bool empty() => false;

  @override
  bool example([ExampleContext? context]) => (context ??= ExampleContext()).random.nextBool();
}

class Uint8ListReflection extends PrimitiveReflection<Uint8List> {
  const Uint8ListReflection();

  @override
  bool canDeserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    if (src is Uint8List) {
      return true;
    }
    return context.split(
      onJson: (context) => src is String, // src MUST be base64 string
      onXml: (context) => src is XmlNode && src.value != null,
    );
  }

  @override
  Uint8List deserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    if (src is Uint8List) {
      return src;
    }
    return context.split(
      onJson: (context) => base64.decode(src.toString()),
      onXml: (context) => base64.decode((src as XmlNode).value!),
    );
  }

  @override
  Object? serialize(Uint8List src,
      [SerializationContext context = const SerializationContext.json()]) {
    final encoded = base64.encode(src);
    return context.split(
      onJson: (context) => encoded,
      onXml: (context) => XmlText(encoded),
    );
  }

  @override
  Uint8List empty() => Uint8List(0);

  @override
  Uint8List example([ExampleContext? context]) {
    context ??= ExampleContext();
    final len = context.random.nextInt(50);
    return Uint8List(len)..fillRange(0, len, context.random.nextInt(255));
  }
}

class DateTimeReflection extends PrimitiveReflection<DateTime> {
  const DateTimeReflection();

  @override
  bool canDeserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    if (src is DateTime) {
      return true;
    }
    return context.split(
      onJson: (context) => src is String && DateTime.tryParse(src) != null,
      onXml: (context) =>
          src is XmlNode &&
          src.value != null &&
          DateTime.tryParse(src.value!) != null,
    );
  }

  @override
  DateTime deserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    if (src is DateTime) {
      return src;
    }
    return context.split(
      onJson: (context) => DateTime.parse(src.toString()),
      onXml: (context) => DateTime.parse((src as XmlNode).value!),
    );
  }

  @override
  Object? serialize(DateTime src,
      [SerializationContext context = const SerializationContext.json()]) {
    final encoded = src.toIso8601String();
    return context.split(
      onJson: (context) => encoded,
      onXml: (context) => XmlText(encoded),
    );
  }

  @override
  DateTime empty() => DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);

  @override
  DateTime example([ExampleContext? context]) {
    context ??= ExampleContext();
    return DateTime.fromMillisecondsSinceEpoch(
        context.random.nextInt(4294967296) +
            context.random.nextInt(4294967296) +
            context.random.nextInt(4294967296),
        isUtc: true);
  }
}

class XFileReflection extends PrimitiveReflection<XFile> {
  const XFileReflection();

  @override
  bool canDeserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    // for now, treat files the same as bytes.
    if (src is XFile) {
      return true;
    }
    return const Uint8ListReflection().canDeserialize(src, context);
  }

  @override
  XFile deserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]) {
    if (src is XFile) {
      return src;
    }
    final data = const Uint8ListReflection().deserialize(src, context);
    final name = "unknown";
    return XFile.fromData(
      data,
      name: name,
      path: '/$name',
      length: data.lengthInBytes,
      mimeType: "application/octet-stream",
    );
  }

  @override
  Object? serialize(XFile src,
      [SerializationContext context = const SerializationContext.json()]) {
    final bytes = context.fileBytesResolver?.call(src);
    if (bytes != null) {
      return const Uint8ListReflection().serialize(bytes, context);
    } else {
      if (context.serializeUnknownValue != null) {
        return context.serializeUnknownValue!(src);
      } else {
        throw UnimplementedError(
          'Unable to serialize XFile (${src.name}) since it '
          'was not possible to obtain its bytes synchronously '
          'via fileBytesResolver NOR serializeUnknownValue.',
        );
      }
    }
  }

  @override
  XFile empty() => XFile.fromData(const Uint8ListReflection().empty(),
      name: '', length: 0);

  @override
  XFile example([ExampleContext? context]) {
    context ??= ExampleContext();
    final data = const Uint8ListReflection().example(context);
    final name = const StringReflection().example(context) + ".txt";
    context.fileCache[name] = data;
    return XFile.fromData(
      data,
      name: name,
      path: '/$name',
      length: data.lengthInBytes,
      mimeType: "text/plain",
    );
  }
}
