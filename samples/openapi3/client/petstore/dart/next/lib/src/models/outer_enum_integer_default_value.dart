// Model def

import 'package:petstore_api/_internal.dart';


part 'outer_enum_integer_default_value.reflection.dart';
part 'outer_enum_integer_default_value.serialization.dart';


//enum def

extension type const OuterEnumIntegerDefaultValue._(int value) {
      const OuterEnumIntegerDefaultValue.number0() : this._(0);
      const OuterEnumIntegerDefaultValue.number1() : this._(1);
      const OuterEnumIntegerDefaultValue.number2() : this._(2);

  /// Creates a [OuterEnumIntegerDefaultValue] enum from a value and safely checking if it exists.
  factory OuterEnumIntegerDefaultValue.$safe(int value) {
    final res = values.where((element) => element.value == value).firstOrNull;
    if (res == null) {
      throw 'Invalid enum value $value';
    }
    return res;
  }

  static bool canDeserialize(Object? value) {
    return value is int && values.where((element) => element.value == value).firstOrNull != null;
  }

  /// Creates a [OuterEnumIntegerDefaultValue] enum from a value without checking if it exists.
  const OuterEnumIntegerDefaultValue.$unsafe(int value) : this._(value);

  /// All possible values of the enum.
  static const List<OuterEnumIntegerDefaultValue> values = [
    OuterEnumIntegerDefaultValue.number0(),
    OuterEnumIntegerDefaultValue.number1(),
    OuterEnumIntegerDefaultValue.number2(),
    
  ];
}