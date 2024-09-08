import 'package:petstore_api/_internal.dart';
import 'package:collection/collection.dart';

class StrictEquality<T> implements Equality<T> {
  const StrictEquality();

  @override
  bool equals(T e1, T e2) => e1 == e2;

  @override
  int hash(T e) {
    return e.hashCode;
  }

  @override
  bool isValidKey(Object? o) {
    return o is T;
  }
}

mixin SerializationReflection<T> {
  SerializationFunction<T, Object?> get deserializeFunction;
  SerializationFunction<bool, Object?> get canDeserializeFunction;
  SerializationFunction<Object?, T> get serializeFunction;

  T Function([ExampleContext?]) get exampleFunction;
  T Function() get emptyFunction;
  Equality<T> get equality => StrictEquality<T>();
  FunctionWrapper1<T, T> get cloneFunction;

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
  SerializationFunction<bool, Object?> get canDeserializeFunction =>
      SerializationFunction(canDeserialize);
  bool canDeserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]);

    @override
  SerializationFunction<T, Object?> get deserializeFunction =>
      SerializationFunction(deserialize);
  T deserialize(Object? src,
      [SerializationContext context = const SerializationContext.json()]);

  @override
  SerializationFunction<Object?, T> get serializeFunction =>
      SerializationFunction(serialize);
  Object? serialize(T src,
      [SerializationContext context = const SerializationContext.json()]);

  @override
  T Function([ExampleContext?]) get exampleFunction => example;
  T example([ExampleContext? context]);

  @override
  T Function() get emptyFunction => empty;
  T empty();

  @override
  FunctionWrapper1<T, T> get cloneFunction => FunctionWrapper1(clone);
  T clone(T src);
}

class DelegatingSerializationReflection<T> with SerializationReflection<T> {
  @override
  final SerializationFunction<Object?, T> serializeFunction;
  @override
  final SerializationFunction<bool, Object?> canDeserializeFunction;
  @override
  final SerializationFunction<T, Object?> deserializeFunction;

  @override
  final T Function() emptyFunction;
  @override
  final T Function([ExampleContext? p1]) exampleFunction;

  @override
  final Equality<T> equality;
  @override
  final FunctionWrapper1<T, T> cloneFunction;

  const DelegatingSerializationReflection({
    required this.serializeFunction,
    required this.canDeserializeFunction,
    required this.deserializeFunction,
    required this.emptyFunction,
    required this.exampleFunction,
    required this.equality,
    required this.cloneFunction,
  });
}

/// A special wrapper to be used in Map<String, Object?> or Iterable<Object?>,
/// where the type information of the object is lost.
///
/// e.g.
///
/// final serialized = MapReflection(NullableReflection(PrimitiveReflection.forObject)).serialize(<String, Object?>{
///   // this will use the default string reflection
///   'a': 'b'
///   // this uses a special enum reflection
///   'c': ReflectionOverrideWrapper(
///     value: 'z',
///     reflection: MyEnumReflection.instance,
///   ),
///   // now we know that this null actually represents `num?`.
///   'd': ReflectionOverrideWrapper(
///     value: null,
///     reflection: NullableReflection(PrimitiveReflection.fornum)
///   )
/// }, SerializationContext.json());
class ReflectionOverrideWrapper<T extends Object?> {
  final T value;
  final SerializationReflection<T> reflection;

  const ReflectionOverrideWrapper({
    required this.value,
    required this.reflection,
  });

  @override
  bool operator ==(Object other) {
    final otherValue =
        other is ReflectionOverrideWrapper<T> ? other.value : other;
    return otherValue is T &&
        reflection.equality.isValidKey(otherValue) &&
        reflection.equality.equals(value, otherValue);
  }

  @override
  int get hashCode => reflection.equality.hash(value);
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

class EnumReflection<T extends Object, TDataType extends Object> extends ContainerReflection<T, TDataType> {
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

  @override
  T clone(T src) {
    return subReflection.cloneFunction(src as TDataType) as T;
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
