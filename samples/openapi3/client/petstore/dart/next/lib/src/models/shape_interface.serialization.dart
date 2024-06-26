// ignore_for_file: unnecessary_cast, unused_local_variable

part of 'shape_interface.dart';


//class serialization

Map<String, dynamic> _$ShapeInterfaceToMap(ShapeInterface instance) {
  final _reflection = ShapeInterfaceReflection.instance;
  return <String, dynamic>{
    
    _reflection.shapeType.oasName: (
            String
 v) {
      return v;
    }(instance.shapeType),
    ...instance.additionalProperties.map((key, v) => MapEntry(key, v)),
    
  };
}

ShapeInterface _$ShapeInterfaceFromMap(Map<String, dynamic> src) {
  final _reflection = ShapeInterfaceReflection.instance;
  return ShapeInterface.$all(
    shapeType: src.getRequiredMapped(_reflection.shapeType.oasName, (v) => 
(

    
            
                    v as String
            

)


),
    additionalProperties: AdditionalProperties(src.except(_reflection.knownKeys).map((key, v) => MapEntry(key, 
(
v

)
))),
    
  );
}

bool _$ShapeInterfaceCanFromMap(Map<String, dynamic> src) {
  final _reflection = ShapeInterfaceReflection.instance;
  if (!src.getOrUndefined(_reflection.shapeType.oasName).split<bool>(
    defined: (v) => v == null ? false :
(

    
            
            v is String
),
    unDefined: () => !_reflection.shapeType.required,
)) {
    return false;
  }
  if (!src.except(_reflection.knownKeys).values.every((v) => v == null ? true :
(
true
))) {
    return false;
  }
  
  return true;
}

/// Deserializes a primitive Object (num, String, List, Map).
ShapeInterface _$ShapeInterfaceDeserialize(Object? src) {
  if (src is Map<String, dynamic>) {
    return _$ShapeInterfaceFromMap(src);
  } else {
        
    throw UnimplementedError();
    
  }
}
/// Checks if a primitive Object (num, String, List, Map) can be deserialized.
bool _$ShapeInterfaceCanDeserialize(Object? src) {
  if (src is Map<String, dynamic>) {
    return _$ShapeInterfaceCanFromMap(src);
  } else {
    return false;
  }
}

/// Serializes to a primitive Object (num, String, List, Map).
Object? _$ShapeInterfaceSerialize(ShapeInterface src) {
  
  return src.toMap();
  
  
}


/*
XmlElement _$ShapeInterfaceToXml(ShapeInterface instance) {
  final reflection = ShapeInterfaceXmlReflection.instance;
  final result = XmlElement(
    XmlName(reflection.oasName, reflection.oasNamespace),
    //attributes
    [

    ],
    //elements
    [
    ],
  );
  return result;
}

ShapeInterface _$ShapeInterfaceFromXml(XmlElement src) {
  final reflection = ShapeInterfaceXmlReflection.instance;
  return ShapeInterface.$all(

  );
}
*/

