// Model def

import 'dart:convert';
import 'dart:typed_data';
import 'package:openapi/_internal.dart';
import 'package:xml/xml.dart';

part 'simple_quadrilateral.reflection.dart';
part 'simple_quadrilateral.serialization.dart';


/// SimpleQuadrilateralMixin
///
/// Properties:
mixin SimpleQuadrilateralMixin on 
  QuadrilateralInterfaceMixin,ShapeInterfaceMixin,
  $OpenApiObjectMixin
 {

}

/// SimpleQuadrilateral
///
/// Properties:
/// * [quadrilateralType] 
/// * [shapeType] 
class SimpleQuadrilateral with
$OpenApiObjectMixin,

QuadrilateralInterfaceMixin,ShapeInterfaceMixin,
SimpleQuadrilateralMixin {
  @override
  String quadrilateralType;
  @override
  String shapeType;





  SimpleQuadrilateral.$all({
    required this.quadrilateralType,
    required this.shapeType,
    
    
  });

  SimpleQuadrilateral({
  required  this.quadrilateralType ,
  required  this.shapeType ,
    
    
  });
}




