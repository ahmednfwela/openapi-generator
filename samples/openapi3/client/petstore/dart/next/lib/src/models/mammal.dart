// Model def

import 'package:petstore_api/_internal.dart';


part 'mammal.reflection.dart';
part 'mammal.serialization.dart';


/// MammalMixin
///
/// Properties:
/// * [className] 
mixin MammalMixin on
  $OpenApiObjectMixin {
  
            String

 get className;
  
  UndefinedWrapper<
            Whale
> get oneOf0;
  UndefinedWrapper<
            Zebra
> get oneOf1;
  UndefinedWrapper<
            Pig
> get oneOf2;
}

/// Mammal
///
/// Properties:
/// * [className] 
class Mammal with
$OpenApiObjectMixin,

MammalMixin {
  @override
  
            String

 className;

  AdditionalProperties<Object

?> additionalProperties;

  
  @override
  UndefinedWrapper<
            Whale
> oneOf0;
  
  @override
  UndefinedWrapper<
            Zebra
> oneOf1;
  
  @override
  UndefinedWrapper<
            Pig
> oneOf2;
  

  Mammal.$all({
        required this.className,
    required this.additionalProperties,
    
    required this.oneOf0,
    required this.oneOf1,
    required this.oneOf2,
  });

  Mammal({
    required  this.className     ,
    this.additionalProperties = const AdditionalProperties(),
    
    this.oneOf0 = const UndefinedWrapper.undefined(),
    this.oneOf1 = const UndefinedWrapper.undefined(),
    this.oneOf2 = const UndefinedWrapper.undefined(),
  });

  static const $reflection = MammalReflection.instance;
  MammalReflection get $classReflection => $reflection;

  @override
  bool validate() {
      final oneOfs = [oneOf0,oneOf1,oneOf2,].where((e) => e.isDefined).take(2);
      if (oneOfs.length > 1) {
        // there must be AT MOST one "oneOf" schema.
        return false;
      }
      
    return super.validate();
  }

  Map<String, dynamic> toMap() {
    return _$MammalToMap(this);
  }
  factory Mammal.fromMap(Map<String, dynamic> src) {
    return _$MammalFromMap(src);
  }
  static Mammal? fromMapOrNull(Map<String, dynamic>? src) {
    if (src == null) {
      return null;
    }
    return Mammal.fromMap(src);
  }
  static bool canFromMap(Map<String, dynamic>? src) {
    if (src  == null) {
      return false;
    }
    return _$MammalCanFromMap(src);
  }


  /// Deserializes a primitive Object (num, String, List, Map).
  factory Mammal.deserialize(Object? src) {
    return _$MammalDeserialize(src);
  }
  static Mammal? deserializeOrNull(Object? src) {
    if (src == null) {
      return null;
    }
    return Mammal.deserialize(src);
  }
  /// Checks if a primitive Object (num, String, List, Map) can be deserialized.
  static bool canDeserialize(Object? src) {
    return _$MammalCanDeserialize(src);
  }
  /// Serializes to a primitive Object (num, String, List, Map).
  Map<String,dynamic> serialize() {
    return _$MammalSerialize(this);
  }
}




