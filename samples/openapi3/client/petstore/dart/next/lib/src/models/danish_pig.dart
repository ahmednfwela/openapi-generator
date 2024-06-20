// Model def

import 'dart:convert';
import 'dart:typed_data';
import 'package:openapi/_internal.dart';
import 'package:xml/xml.dart';

part 'danish_pig.reflection.dart';
part 'danish_pig.serialization.dart';


/// DanishPigMixin
///
/// Properties:
/// * [className] 
mixin DanishPigMixin on 
  
  $OpenApiObjectMixin
 {
  String get className;

}

/// DanishPig
///
/// Properties:
/// * [className] 
class DanishPig with
$OpenApiObjectMixin,


DanishPigMixin {
  @override
  String className;





  DanishPig.$all({
    required this.className,
    
    
  });

  DanishPig({
  required  this.className ,
    
    
  });
}




