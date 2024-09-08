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

class ObjectReflection extends PrimitiveReflection<Object>
    implements Equality<Object> {
  const ObjectReflection();
  static const basicReflections = <SerializationReflection<Object>>[
    PrimitiveReflection.fornum,
    PrimitiveReflection.forbool,
    PrimitiveReflection.forDateTime,
    ListReflection(NullableReflection(PrimitiveReflection.forObject)),
    MapReflection(NullableReflection(PrimitiveReflection.forObject)),
    PrimitiveReflection.forString,
  ];
  static const aggregatedReflections = [
    ...basicReflections,
    ...generatedClassReflectionsList,
  ];
  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    if (src == null) {
      // It's impossible to know the reflection of a null object.
      return false;
    }
    final reflection = context.deserializeReflectionResolver?.call(src);
    if (reflection != null) {
      return reflection.canDeserializeFunction(src, context);
    }
    // If deserialization fails we just return the object itself
    return true;
  }

  @override
  Object deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    if (src == null) {
      throw ArgumentError.notNull('src');
    }
    var subReflection = context.deserializeReflectionResolver?.call(src) ??
        basicReflections
            .firstWhereOrNull((x) => x.canDeserializeFunction(src, context));
    if (subReflection == null) {
      //return it as is.
      return src;
    }
    return subReflection.deserializeFunction(src, context);
  }

  /// Attempts to discover the reflection of a given input that was received in
  /// either [deserialize] or [canDeserialize].
  ///
  /// It first asks the context if it has a result by calling [SerializationContext.deserializeReflectionResolver].
  ///
  /// If it fails, it iteratively checks every item in [basicReflections], and
  /// calls [canDeserialize] on each of them, until a reflection returns true.
  static SerializationReflection<Object>? discoverDeserializeReflection(
    Object? src,
    SerializationContext context,
  ) {
    final resolvedResult = context.deserializeReflectionResolver?.call(src);
    if (resolvedResult != null) {
      return resolvedResult;
    }

    return basicReflections
        .firstWhereOrNull((x) => x.canDeserializeFunction(src));
  }

  /// It checks if the src object is a [ReflectionOverrideWrapper], and returns its
  /// reflection.
  ///
  /// If it fails, it checks if the src object implements [$OpenApiObjectMixin],
  /// and returns its reflection via [$OpenApiObjectMixin.$classReflection].
  ///
  /// If it fails, it iteratively checks every item in [aggregatedReflections], and
  /// calls [isInstanceOfType] on each of them, until a reflection returns true.
  static SerializationReflection<Object?>? discoverDartObjectReflection(
    Object src,
  ) {
    if (src is ReflectionOverrideWrapper<Object?>) {
      return src.reflection;
    }
    if (src is $OpenApiObjectMixin) {
      return src.$classReflection;
    }

    return basicReflections.firstWhereOrNull((x) => x.isInstanceOfType(src));
  }

  /// Attempts to discover the reflection of a given input that was received in
  /// a [serialize] call.
  ///
  /// It first asks the context if it has a result by calling [SerializationContext.serializeReflectionResolver].
  ///
  /// If it fails, it checks if the src object implements [$OpenApiObjectMixin],
  /// and returns its reflection via [$OpenApiObjectMixin.$classReflection].
  ///
  /// If it fails, it iteratively checks every item in [aggregatedReflections], and
  /// calls [isInstanceOfType] on each of them, until a reflection returns true.
  static SerializationReflection<Object?>? discoverSerializeReflection(
    Object src,
    SerializationContext context,
  ) {
    final resolvedResult = context.serializeReflectionResolver?.call(src);
    if (resolvedResult != null) {
      return resolvedResult;
    }
    return discoverDartObjectReflection(src);
  }

  @override
  Object? serialize(
    Object src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    final subReflection = discoverSerializeReflection(src, context);
    if (subReflection == null) {
      //return it as is.
      return src;
    }
    return subReflection.serializeFunction(src, context);
  }

  // aggregate primitive equalities.
  static final _slowEquality = MultiEquality<Object>(
    basicReflections.map((e) => e.equality).toList(growable: false),
  );

  @override
  Equality<Object> get equality => this;

  @override
  Object empty() => 0;

  @override
  Object example([ExampleContext? context]) {
    context ??= ExampleContext();
    final selectedReflectionIndex =
        context.random.nextInt(basicReflections.length);
    return basicReflections[selectedReflectionIndex].exampleFunction(context);
  }

  @override
  bool equals(Object e1, Object e2) {
    // attempt naïve equality by checking == operator.
    //
    // this will work on generated models and ReflectionOverrideWrapper,
    // but won't work on some primitives like XFile, Uint8List.
    //
    // which is why we need to check other cases as well.
    if (e1 == e2) {
      return true;
    }
    // extract the true value if ReflectionOverrideWrapper is used.
    final trueE1 = e1 is ReflectionOverrideWrapper ? e1.value : e1;
    final trueE2 = e2 is ReflectionOverrideWrapper ? e2.value : e2;
    // attempt to extract reflection if provided via ReflectionOverrideWrapper.
    final e1Reflection = discoverDartObjectReflection(e1);
    final e2Reflection = discoverDartObjectReflection(e2);
    // two objects are equal if any of the discovered reflections say that they are equal.
    if (e1Reflection != null) {
      final e1Eq = e1Reflection.equality;
      return e1Eq.isValidKey(trueE1) &&
          e1Eq.isValidKey(trueE2) &&
          e1Eq.equals(trueE1, trueE2);
    }
    if (e2Reflection != null) {
      final e2Eq = e2Reflection.equality;
      return e2Eq.isValidKey(trueE1) &&
          e2Eq.isValidKey(trueE2) &&
          e2Eq.equals(trueE1, trueE2);
    }
    // if no reflection was discovered, use the iterative equality.
    return _slowEquality.equals(e1, e2);
  }

  @override
  int hash(Object e) {
    final discoveredReflection = discoverDartObjectReflection(e);
    if (discoveredReflection != null) {
      return discoveredReflection.equality.hash(e);
    }
    return e.hashCode;
  }

  @override
  bool isValidKey(Object? o) {
    // any non-null object works.
    return o != null;
  }

  @override
  Object clone(Object src) {
    final discoveredReflection = discoverDartObjectReflection(src);
    if (discoveredReflection != null) {
      return discoveredReflection.cloneFunction(src) as Object;
    }
    return src;
  }
}

class NumReflection extends PrimitiveReflection<num> {
  const NumReflection();

  @override
  num clone(num src) {
    return src;
  }

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) =>
          src is num ||
          (const StringReflection().canDeserialize(src, context) &&
              num.tryParse(
                      const StringReflection().deserialize(src, context)) !=
                  null),
      onXml: (context) =>
          const StringReflection().canDeserialize(src, context) &&
          num.tryParse(const StringReflection().deserialize(src, context)) !=
              null,
    );
  }

  @override
  num deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => src is num
          ? src
          : num.parse(const StringReflection().deserialize(src, context)),
      onXml: (context) =>
          num.parse(const StringReflection().deserialize(src, context)),
    );
  }

  @override
  Object? serialize(
    num src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => src,
      onXml: (context) =>
          PrimitiveReflection.forString.serialize(src.toString(), context),
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
  int clone(int src) {
    return src;
  }

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) =>
          src is int ||
          (const StringReflection().canDeserialize(src, context) &&
              int.tryParse(
                      const StringReflection().deserialize(src, context)) !=
                  null),
      onXml: (context) =>
          const StringReflection().canDeserialize(src, context) &&
          int.tryParse(const StringReflection().deserialize(src, context)) !=
              null,
    );
  }

  @override
  int deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => src is int
          ? src
          : int.parse(const StringReflection().deserialize(src, context)),
      onXml: (context) =>
          int.parse(const StringReflection().deserialize(src, context)),
    );
  }

  @override
  Object? serialize(
    int src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => src,
      onXml: (context) =>
          PrimitiveReflection.forString.serialize(src.toString(), context),
    );
  }

  @override
  int empty() => 0;

  @override
  int example([ExampleContext? context]) =>
      (context ??= ExampleContext()).random.nextInt(100);
}

class DoubleReflection extends PrimitiveReflection<double> {
  const DoubleReflection();
  @override
  double clone(double src) {
    return src;
  }

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return const NumReflection().canDeserialize(src, context);
  }

  @override
  double deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return const NumReflection().deserialize(src, context).toDouble();
  }

  @override
  Object? serialize(
    double src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return PrimitiveReflection.fornum.serialize(src, context);
  }

  @override
  double empty() => 0;

  @override
  double example([ExampleContext? context]) =>
      (context ??= ExampleContext()).random.nextDouble();
}

class StringReflection extends PrimitiveReflection<String> {
  const StringReflection();
  @override
  String clone(String src) {
    return src;
  }

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => true,
      onXml: (context) => src is XmlNode,
    );
  }

  @override
  String deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => src.toString(),
      onXml: (context) => (src as XmlNode).value ?? src.innerText,
    );
  }

  @override
  Object? serialize(
    String src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => src,
      onXml: (context) => XmlText(src),
    );
  }

  @override
  String empty() => "";

  @override
  String example([ExampleContext? context]) =>
      'random_string_${(context ??= ExampleContext()).random.nextInt(100)}';
}

class BoolReflection extends PrimitiveReflection<bool> {
  const BoolReflection();
  @override
  bool clone(bool src) {
    return src;
  }

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) =>
          src is bool ||
          (PrimitiveReflection.forString.canDeserialize(src, context) &&
              bool.tryParse(PrimitiveReflection.forString
                      .deserialize(src, context)) !=
                  null),
      onXml: (context) =>
          PrimitiveReflection.forString.canDeserialize(src, context) &&
          bool.tryParse(
                  PrimitiveReflection.forString.deserialize(src, context)) !=
              null,
    );
  }

  @override
  bool deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => src is bool
          ? src
          : bool.parse(PrimitiveReflection.forString.deserialize(src, context)),
      onXml: (context) =>
          bool.parse(PrimitiveReflection.forString.deserialize(src, context)),
    );
  }

  @override
  Object? serialize(
    bool src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => src,
      onXml: (context) =>
          PrimitiveReflection.forString.serialize(src.toString(), context),
    );
  }

  @override
  bool empty() => false;

  @override
  bool example([ExampleContext? context]) =>
      (context ??= ExampleContext()).random.nextBool();
}

class Uint8ListEquality extends StrictEquality<Uint8List> {
  const Uint8ListEquality();

  static const subEq = ListEquality(StrictEquality<int>());

  @override
  bool equals(Uint8List e1, Uint8List e2) {
    return subEq.equals(e1, e2);
  }

  @override
  int hash(Uint8List e) {
    return subEq.hash(e);
  }

  @override
  bool isValidKey(Object? o) {
    return subEq.isValidKey(o);
  }
}

class Uint8ListReflection extends PrimitiveReflection<Uint8List> {
  const Uint8ListReflection();
  @override
  Uint8List clone(Uint8List src) {
    return Uint8List.fromList(src);
  }

  static bool isBase64String(String src) {
    final regex = RegExp(
      r'^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$',
    );
    return regex.hasMatch(src);
  }

  @override
  Equality<Uint8List> get equality => const Uint8ListEquality();

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    // src MUST be base64 string
    return context.split(
      onJson: (context) =>
          src is Uint8List ||
          (PrimitiveReflection.forString.canDeserialize(src, context) &&
              isBase64String(
                  PrimitiveReflection.forString.deserialize(src, context))),
      onXml: (context) =>
          PrimitiveReflection.forString.canDeserialize(src, context) &&
          isBase64String(
              PrimitiveReflection.forString.deserialize(src, context)),
    );
  }

  @override
  Uint8List deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return context.split(
      onJson: (context) => src is Uint8List
          ? src
          : base64
              .decode(PrimitiveReflection.forString.deserialize(src, context)),
      onXml: (context) => base64
          .decode(PrimitiveReflection.forString.deserialize(src, context)),
    );
  }

  @override
  Object? serialize(
    Uint8List src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    final encoded = base64.encode(src);
    return context.split(
      onJson: (context) => encoded,
      onXml: (context) =>
          PrimitiveReflection.forString.serialize(encoded, context),
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
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    if (src is DateTime) {
      return true;
    }
    return PrimitiveReflection.forString.canDeserialize(src) &&
        DateTime.tryParse(
                PrimitiveReflection.forString.deserialize(src, context)) !=
            null;
  }

  @override
  DateTime deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    if (src is DateTime) {
      return src;
    }
    return DateTime.parse(
      PrimitiveReflection.forString.deserialize(src, context),
    );
  }

  @override
  Object? serialize(
    DateTime src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return PrimitiveReflection.forString.serialize(
      src.toIso8601String(),
      context,
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
      isUtc: true,
    );
  }

  @override
  DateTime clone(DateTime src) {
    return src;
  }
}

class XFileReflection extends PrimitiveReflection<XFile>
    implements Equality<XFile> {
  const XFileReflection();
  // XFiles are read only anyway, so we return them as is.
  @override
  XFile clone(XFile src) {
    return src;
  }

  @override
  bool canDeserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    // for now, treat files the same as bytes.
    if (src is XFile) {
      return true;
    }
    return PrimitiveReflection.forUint8List.canDeserialize(src, context);
  }

  @override
  XFile deserialize(
    Object? src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    if (src is XFile) {
      return src;
    }
    final data = PrimitiveReflection.forUint8List.deserialize(src, context);
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
  Object? serialize(
    XFile src, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    final bytes = context.fileBytesResolver?.call(src);
    if (bytes != null) {
      return PrimitiveReflection.forUint8List.serialize(bytes, context);
    }
    return src;
  }

  @override
  XFile empty() => XFile.fromData(PrimitiveReflection.forUint8List.empty(),
      name: '', length: 0);

  @override
  XFile example([ExampleContext? context]) {
    context ??= ExampleContext();
    final data = PrimitiveReflection.forUint8List.example(context);
    final name = PrimitiveReflection.forString.example(context) + ".txt";
    context.fileCache[name] = data;
    return XFile.fromData(
      data,
      name: name,
      path: '/$name',
      length: data.lengthInBytes,
      mimeType: "text/plain",
    );
  }

  @override
  Equality<XFile> get equality => this;
  @override
  bool equals(XFile e1, XFile e2) {
    if (identical(e1, e2)) return true;
    return e1.path == e2.path &&
        e1.mimeType == e2.mimeType &&
        e1.name == e2.name;
  }

  @override
  int hash(XFile e) {
    return Object.hash(e.path, e.mimeType, e.name);
  }

  @override
  bool isValidKey(Object? o) {
    return o is XFile;
  }
}