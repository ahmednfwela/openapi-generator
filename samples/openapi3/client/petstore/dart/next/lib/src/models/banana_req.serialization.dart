// ignore_for_file: unnecessary_cast, unused_local_variable

part of 'banana_req.dart';


//class serialization

Map<String, dynamic> _$BananaReqToMap(BananaReq instance) {
  final _reflection = BananaReqReflection.instance;
  return <String, dynamic>{
    
    _reflection.lengthCm.oasName: (
            num
 v) {
      return v;
    }(instance.lengthCm),
    if (instance.sweet.isDefined)
    _reflection.sweet.oasName: (
            bool
 v) {
      return v;
    }(instance.sweet.valueRequired),
    
    
  };
}

BananaReq _$BananaReqFromMap(Map<String, dynamic> src) {
  final _reflection = BananaReqReflection.instance;
  return BananaReq.$all(
    lengthCm: src.getRequiredMapped(_reflection.lengthCm.oasName, (v) => 
(

    
            
                    v as num
            

)


),
sweet: src.getOrUndefinedMapped(_reflection.sweet.oasName, (v) => 
(

    
            
                    v as bool
            

)


),
    
    
  );
}

bool _$BananaReqCanFromMap(Map<String, dynamic> src) {
  final _reflection = BananaReqReflection.instance;
  if (!src.getOrUndefined(_reflection.lengthCm.oasName).split<bool>(
    defined: (v) => v == null ? false :
(

    
            
            v is num
),
    unDefined: () => !_reflection.lengthCm.required,
)) {
    return false;
  }
if (!src.getOrUndefined(_reflection.sweet.oasName).split<bool>(
    defined: (v) => v == null ? false :
(

    
            
            v is bool
),
    unDefined: () => !_reflection.sweet.required,
)) {
    return false;
  }
  
  return true;
}

/// Deserializes a primitive Object (num, String, List, Map).
BananaReq _$BananaReqDeserialize(Object? src) {
  if (src is Map<String, dynamic>) {
    return _$BananaReqFromMap(src);
  } else {
        
    throw UnimplementedError();
    
  }
}
/// Checks if a primitive Object (num, String, List, Map) can be deserialized.
bool _$BananaReqCanDeserialize(Object? src) {
  if (src is Map<String, dynamic>) {
    return _$BananaReqCanFromMap(src);
  } else {
    return false;
  }
}

/// Serializes to a primitive Object (num, String, List, Map).
Map<String,dynamic> _$BananaReqSerialize(BananaReq src) {
  
  return src.toMap();
  
  
}


/*
XmlElement _$BananaReqToXml(BananaReq instance) {
  final reflection = BananaReqXmlReflection.instance;
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

BananaReq _$BananaReqFromXml(XmlElement src) {
  final reflection = BananaReqXmlReflection.instance;
  return BananaReq.$all(

  );
}
*/

