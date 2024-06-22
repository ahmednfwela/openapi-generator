// Model def

import 'package:openapi/_internal.dart';


part 'cat.reflection.dart';
part 'cat.serialization.dart';


/// CatMixin
///
/// Properties:
/// * [declawed] 
mixin CatMixin on 
  AnimalMixin, $OpenApiObjectMixin {
  UndefinedWrapper<
            bool
> get declawed;
  
}

/// Cat
///
/// Properties:
/// * [color] 
/// * [declawed] 
/// * [className] 
class Cat with
$OpenApiObjectMixin,

AnimalMixin,
CatMixin {
  @override
  UndefinedWrapper<
            String
> color;
  @override
  UndefinedWrapper<
            bool
> declawed;
  @override
  
            String
 className;

  

  

  Cat.$all({
        required this.color,
    required this.declawed,
    required this.className,
    
    
  });

  Cat({
      this.color = const UndefinedWrapper
    (
        
        'red'
    )
    
,
  this.declawed = const UndefinedWrapper
        .undefined()
,
required  this.className     ,
    
    
  });

  static const $reflection = CatReflection.instance;

  @override
  bool validate() {
      
      
    return super.validate();
  }


  Map<String, dynamic> toMap() {
    return _$CatToMap(this);
  }
  factory Cat.fromMap(Map<String, dynamic> src) {
    return _$CatFromMap(src);
  }
  static Cat? fromMapOrNull(Map<String, dynamic>? src) {
    if (src == null) {
      return null;
    }
    return Cat.fromMap(src);
  }
  static bool canFromMap(Map<String, dynamic>? src) {
    if (src  == null) {
      return false;
    }
    return _$CatCanFromMap(src);
  }


  /// Deserializes a primitive Object (num, String, List, Map).
  factory Cat.deserialize(Object? src) {
    return _$CatDeserialize(src);
  }
  static Cat? deserializeOrNull(Object? src) {
    if (src == null) {
      return null;
    }
    return Cat.deserialize(src);
  }
  /// Checks if a primitive Object (num, String, List, Map) can be deserialized.
  static bool canDeserialize(Object? src) {
    return _$CatCanDeserialize(src);
  }
  /// Serializes to a primitive Object (num, String, List, Map).
  Object? serialize() {
    return _$CatSerialize(this);
  }
}




