// Model def

import 'dart:convert';
import 'dart:typed_data';
import 'package:openapi/_internal.dart';
import 'package:xml/xml.dart';

part 'shape_interface.reflection.dart';
part 'shape_interface.serialization.dart';

//class defination

///
mixin ShapeInterfaceMixin on $OpenApiObjectMixin {
  String get shapeType;
}

///
class ShapeInterface with $OpenApiObjectMixin, ShapeInterfaceMixin {
  @override
  String shapeType;

  ShapeInterface.$all({
    required this.shapeType,
  });

  ShapeInterface({
    required this.shapeType,
  });
}
