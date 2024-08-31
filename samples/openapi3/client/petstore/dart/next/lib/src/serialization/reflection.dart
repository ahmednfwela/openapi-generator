import 'package:petstore_api/_internal.dart';

mixin SerializationReflection<T> {
  SerializationFunction<T, Object?> get deserializeFunction;
  SerializationFunction<bool, Object?> get canDeserializeFunction;
  SerializationFunction<Object?, T> get serializeFunction;

  T Function([ExampleContext?]) get exampleFunction;
  T Function() get emptyFunction;

  /// check if an instance can be reflected using this reflection.
  bool isInstanceOfType(
    Object? instance, [
    SerializationContext context = const SerializationContext.json(),
  ]) =>
      instance is T;

  /// check if a `TOther Function()` is assignable to `T Function()`,
  /// meaning that [TOther] is assignable to -and thus a subtype of- [T].
  ///
  /// A reflection can reflect a type as long as [TOther] is assignable to [T].
  bool canReflectType<TOther>() =>
      TOther == T || (() => null as TOther) is T Function();
}

mixin InheritanceBasedSerializationReflection<T> on SerializationReflection<T> {
  @override
  SerializationFunction<T, Object?> get deserializeFunction =>
      SerializationFunction(deserialize);
  @override
  SerializationFunction<bool, Object?> get canDeserializeFunction =>
      SerializationFunction(canDeserialize);
  @override
  SerializationFunction<Object?, T> get serializeFunction =>
      SerializationFunction(serialize);
  @override
  T Function([ExampleContext?]) get exampleFunction => example;
  @override
  T Function() get emptyFunction => empty;

  bool canDeserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]);
  T deserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]);
  Object? serialize(T src,
      [SerializationContext context = const SerializationContext.json()]);

  T example([ExampleContext? context]);
  T empty();
}

class OasNameWrapper with HasOasName {
  @override
  final String oasName;

  const OasNameWrapper({
    required this.oasName,
  });
}

mixin HasOasName {
  String get oasName;
}

// see https://github.com/dart-lang/sdk/issues/56231 for reason why this is needed.
extension type const SerializationFunction<TOut, TIn>.unsafe(Function fn) {
  const SerializationFunction(
    TOut Function(TIn, [SerializationContext context]) src,
  ) : this.unsafe(src);

  TOut call(
    TIn value, [
    SerializationContext context = const SerializationContext.json(),
  ]) {
    return fn(value, context) as TOut;
  }
}
extension type const FunctionWrapper1<TOut, TIn1>.unsafe(Function fn) {
  const FunctionWrapper1(TOut Function(TIn1) src) : this.unsafe(src);
  TOut call(TIn1 value1) {
    return fn(value1) as TOut;
  }
}
extension type const FunctionWrapper2<TOut, TIn1, TIn2>.unsafe(Function fn) {
  const FunctionWrapper2(TOut Function(TIn1, TIn2) src) : this.unsafe(src);
  TOut call(TIn1 value1, TIn2 value2) {
    return fn(value1, value2) as TOut;
  }
}
extension type const FunctionWrapper3<TOut, TIn1, TIn2, TIn3>.unsafe(
    Function fn) {
  const FunctionWrapper3(TOut Function(TIn1, TIn2, TIn3) src)
      : this.unsafe(src);

  TOut call(TIn1 value1, TIn2 value2, TIn3 value3) {
    return fn(value1, value2, value3) as TOut;
  }
}

class EnumReflection<T, TDataType> extends ContainerReflection<T, TDataType> {
  const EnumReflection(super.subReflection, {
    required this.members,
  });

  final List<EnumMemberReflection<T, TDataType>> members;

  @override
  T deserialize(Object? value, [SerializationContext context = const SerializationContext.json()]) {
    final deserialized = subReflection.deserializeFunction(value);
    final res = members.where((element) => element.oasValue == deserialized).firstOrNull;
    if (res == null) {
      throw 'Invalid enum value $value';
    }
    return res.value;
  }

  @override
  bool canDeserialize(Object? value, [SerializationContext context = const SerializationContext.json()]) {
    if (!subReflection.canDeserializeFunction(value, context)) {
      return false;
    }
    final deserialized = subReflection.deserializeFunction(value, context);
    return members.any((element) => element.oasValue == deserialized);
  }

  @override
  Object? serialize(T value, [SerializationContext context = const SerializationContext.json()]) {
    return subReflection.serializeFunction(value as TDataType, context);
  }

  @override
  T empty() {
    return subReflection.emptyFunction() as T;
  }

  @override
  T example([ExampleContext? context]) {
    context ??= ExampleContext();
    final member = members.elementAt(context.random.nextInt(members.length));
    return member.value;
  }
}

class EnumMemberReflection<T, TDataType> {
  const EnumMemberReflection({
    required this.dartName,
    required this.oasValue,
    required this.value,
  });

  final String dartName;
  final TDataType oasValue;
  final T value;
}
