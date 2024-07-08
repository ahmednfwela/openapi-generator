// Model def

import 'package:petstore_api/_internal.dart';


part 'value.reflection.dart';
part 'value.serialization.dart';


/// ValueMixin
mixin ValueMixin on
  $OpenApiObjectMixin {
    
  UndefinedWrapper<
            Scalar
> get oneOf0;
  UndefinedWrapper<
    List<
        
            Scalar

>
> get oneOf1;
}

/// Value
class Value with
$OpenApiObjectMixin,

ValueMixin {

  AdditionalProperties<Object

?> additionalProperties;

  
  @override
  UndefinedWrapper<
            Scalar
> oneOf0;
  
  @override
  UndefinedWrapper<
    List<
        
            Scalar

>
> oneOf1;
  

  Value.$all({
        required this.additionalProperties,
    
    required this.oneOf0,
    required this.oneOf1,
  });

  Value({
        this.additionalProperties = const AdditionalProperties(),
    
    this.oneOf0 = const UndefinedWrapper.undefined(),
    this.oneOf1 = const UndefinedWrapper.undefined(),
  });

  static const $reflection = ValueReflection.instance;
  ValueReflection get $classReflection => $reflection;

  @override
  bool validate() {
      final oneOfs = [oneOf0,oneOf1,].where((e) => e.isDefined).take(2);
      if (oneOfs.length > 1) {
        // there must be AT MOST one "oneOf" schema.
        return false;
      }
      
    return super.validate();
  }

  Map<String, dynamic> toMap() {
    return _$ValueToMap(this);
  }
  factory Value.fromMap(Map<String, dynamic> src) {
    return _$ValueFromMap(src);
  }
  static Value? fromMapOrNull(Map<String, dynamic>? src) {
    if (src == null) {
      return null;
    }
    return Value.fromMap(src);
  }
  static bool canFromMap(Map<String, dynamic>? src) {
    if (src  == null) {
      return false;
    }
    return _$ValueCanFromMap(src);
  }


  /// Deserializes a primitive Object (num, String, List, Map).
  factory Value.deserialize(Object? src) {
    return _$ValueDeserialize(src);
  }
  static Value? deserializeOrNull(Object? src) {
    if (src == null) {
      return null;
    }
    return Value.deserialize(src);
  }
  /// Checks if a primitive Object (num, String, List, Map) can be deserialized.
  static bool canDeserialize(Object? src) {
    return _$ValueCanDeserialize(src);
  }
  /// Serializes to a primitive Object (num, String, List, Map).
  Object? serialize() {
    return _$ValueSerialize(this);
  }
}




