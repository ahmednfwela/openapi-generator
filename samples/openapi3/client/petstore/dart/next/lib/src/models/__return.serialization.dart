// ignore_for_file: unnecessary_cast, unused_local_variable

part of '__return.dart';


//class serialization

Map<String, dynamic> _$$ReturnToMap($Return instance) {
  final _reflection = $ReturnReflection.instance;
  return <String, dynamic>{
    if (instance.$return.isDefined)
    _reflection.$returnPart.oasName: (
            int

 v) {
      return v;
    }(instance.$return.valueRequired),
    ...instance.additionalProperties.map((key, v) => MapEntry(key, v)),
    
  };
}

$Return _$$ReturnFromMap(Map<String, dynamic> src) {
  const _reflection = $ReturnReflection.instance;
  return $Return.$all(
    $return: src.getOrUndefinedMapped(_reflection.$returnPart.oasName, (v) => 
(

            
                    ( v is int ? v as int :
int.parse(v.toString())



)

)


),
    additionalProperties: AdditionalProperties(src.except(_reflection.knownKeys).map((key, v) => MapEntry(key, 
(
v

)
))),
    
  );
}

bool _$$ReturnCanFromMap(Map<String, dynamic> src) {
  final _reflection = $ReturnReflection.instance;

  if (!src.getOrUndefined(_reflection.$returnPart.oasName).split<bool>(
    defined: (v) => v == null ? false :
(

    
            
            (v is int
     || (int.tryParse(v.toString()) != null)
    
    
    
)
),
    unDefined: () => !_reflection.$returnPart.required,
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
$Return _$$ReturnDeserialize(Object? src) {
  if (src is Map<String, dynamic>) {
    return _$$ReturnFromMap(src);
  } else {
        
    throw UnimplementedError();
    
  }
}
/// Checks if a primitive Object (num, String, List, Map) can be deserialized.
bool _$$ReturnCanDeserialize(Object? src) {
  if (src is Map<String, dynamic>) {
    return _$$ReturnCanFromMap(src);
  } else {
    return false;
  }
}

/// Serializes to a primitive Object (num, String, List, Map).
Map<String, dynamic> _$$ReturnSerialize($Return src) {
  Map<String, dynamic> initialResult = () {
    
      return _$$ReturnToMap(src);
    
  }();
  return initialResult;
}


/*
XmlElement _$$ReturnToXml($Return instance) {
  final reflection = $ReturnXmlReflection.instance;
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

$Return _$$ReturnFromXml(XmlElement src) {
  final reflection = $ReturnXmlReflection.instance;
  return $Return.$all(

  );
}
*/

