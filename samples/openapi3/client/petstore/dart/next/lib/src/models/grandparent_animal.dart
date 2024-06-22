// Model def

import 'package:openapi/_internal.dart';


part 'grandparent_animal.reflection.dart';
part 'grandparent_animal.serialization.dart';


/// GrandparentAnimalMixin
///
/// Properties:
/// * [petType] 
mixin GrandparentAnimalMixin on 
  $OpenApiObjectMixin {
  
            String
 get petType;
  
}

/// GrandparentAnimal
///
/// Properties:
/// * [petType] 
class GrandparentAnimal with
$OpenApiObjectMixin,


GrandparentAnimalMixin {
  @override
  
            String
 petType;

  

  

  GrandparentAnimal.$all({
        required this.petType,
    
    
  });

  GrandparentAnimal({
    required  this.petType     ,
    
    
  });

  static const $reflection = GrandparentAnimalReflection.instance;

  @override
  bool validate() {
    return super.validate();
  }


  Map<String, dynamic> toMap() {
    return _$GrandparentAnimalToMap(this);
  }
  factory GrandparentAnimal.fromMap(Map<String, dynamic> src) {
    return _$GrandparentAnimalFromMap(src);
  }
  static GrandparentAnimal? fromMapOrNull(Map<String, dynamic>? src) {
    if (src == null) {
      return null;
    }
    return GrandparentAnimal.fromMap(src);
  }
  static bool canFromMap(Map<String, dynamic>? src) {
    if (src  == null) {
      return false;
    }
    return _$GrandparentAnimalCanFromMap(src);
  }


  /// Deserializes a primitive Object (num, String, List, Map).
  factory GrandparentAnimal.deserialize(Object? src) {
    return _$GrandparentAnimalDeserialize(src);
  }
  static GrandparentAnimal? deserializeOrNull(Object? src) {
    if (src == null) {
      return null;
    }
    return GrandparentAnimal.deserialize(src);
  }
  /// Checks if a primitive Object (num, String, List, Map) can be deserialized.
  static bool canDeserialize(Object? src) {
    return _$GrandparentAnimalCanDeserialize(src);
  }
  /// Serializes to a primitive Object (num, String, List, Map).
  Object? serialize() {
    return _$GrandparentAnimalSerialize(this);
  }
}




