// ignore_for_file: unnecessary_cast, unused_local_variable

part of 'foo_get_default_response.dart';


//class serialization

Map<String, dynamic> _$FooGetDefaultResponseToMap(FooGetDefaultResponse instance) {
  final _reflection = FooGetDefaultResponseReflection.instance;
  return <String, dynamic>{
    if (instance.string.isDefined)
    _reflection.string.oasName: (
            Foo
 v) {
      return v.serialize();
    }(instance.string.valueRequired),
    ...instance.additionalProperties.map((key, v) => MapEntry(key, v)),
    
  };
}

FooGetDefaultResponse _$FooGetDefaultResponseFromMap(Map<String, dynamic> src) {
  final _reflection = FooGetDefaultResponseReflection.instance;
  return FooGetDefaultResponse.$all(
    string: src.getOrUndefinedMapped(_reflection.string.oasName, (v) => Foo.deserialize
(

    
            v


)


),
    additionalProperties: AdditionalProperties(src.except(_reflection.knownKeys).map((key, v) => MapEntry(key, 
(
v

)
))),
    
  );
}

bool _$FooGetDefaultResponseCanFromMap(Map<String, dynamic> src) {
  final _reflection = FooGetDefaultResponseReflection.instance;
  if (!src.getOrUndefined(_reflection.string.oasName).split<bool>(
    defined: (v) => v == null ? false :
(

    
            Foo.canDeserialize(v)
            
),
    unDefined: () => !_reflection.string.required,
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
FooGetDefaultResponse _$FooGetDefaultResponseDeserialize(Object? src) {
  if (src is Map<String, dynamic>) {
    return _$FooGetDefaultResponseFromMap(src);
  } else {
        
    throw UnimplementedError();
    
  }
}
/// Checks if a primitive Object (num, String, List, Map) can be deserialized.
bool _$FooGetDefaultResponseCanDeserialize(Object? src) {
  if (src is Map<String, dynamic>) {
    return _$FooGetDefaultResponseCanFromMap(src);
  } else {
    return false;
  }
}

/// Serializes to a primitive Object (num, String, List, Map).
Object? _$FooGetDefaultResponseSerialize(FooGetDefaultResponse src) {
  
  return src.toMap();
  
  
}


/*
XmlElement _$FooGetDefaultResponseToXml(FooGetDefaultResponse instance) {
  final reflection = FooGetDefaultResponseXmlReflection.instance;
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

FooGetDefaultResponse _$FooGetDefaultResponseFromXml(XmlElement src) {
  final reflection = FooGetDefaultResponseXmlReflection.instance;
  return FooGetDefaultResponse.$all(

  );
}
*/

