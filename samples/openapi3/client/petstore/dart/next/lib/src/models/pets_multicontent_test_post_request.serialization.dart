// ignore_for_file: unnecessary_cast, unused_local_variable

part of 'pets_multicontent_test_post_request.dart';


//class serialization

Map<String, dynamic> _$PetsMulticontentTestPostRequestToMap(PetsMulticontentTestPostRequest instance) {
  final _reflection = PetsMulticontentTestPostRequestReflection.instance;
  return <String, dynamic>{
    if (instance.id.isDefined)
    _reflection.id.oasName: (
            String
 v) {
      return v;
    }(instance.id.valueRequired),
    if (instance.address.isDefined)
    _reflection.address.oasName: (
            PetsMulticontentTestPostRequestAddress
 v) {
      return v.serialize();
    }(instance.address.valueRequired),
    if (instance.profileImage.isDefined)
    _reflection.profileImage.oasName: (
            XFile
 v) {
      return v;
    }(instance.profileImage.valueRequired),
    
    
  };
}

PetsMulticontentTestPostRequest _$PetsMulticontentTestPostRequestFromMap(Map<String, dynamic> src) {
  final _reflection = PetsMulticontentTestPostRequestReflection.instance;
  return PetsMulticontentTestPostRequest.$all(
    id: src.getOrUndefinedMapped(_reflection.id.oasName, (v) => 
(

    
            
                    v as String
            

)


),
address: src.getOrUndefinedMapped(_reflection.address.oasName, (v) => PetsMulticontentTestPostRequestAddress.deserialize
(

    
            v


)


),
profileImage: src.getOrUndefinedMapped(_reflection.profileImage.oasName, (v) => 
(

    
            
                    v as XFile
            

)


),
    
    
  );
}

bool _$PetsMulticontentTestPostRequestCanFromMap(Map<String, dynamic> src) {
  final _reflection = PetsMulticontentTestPostRequestReflection.instance;
  if (!src.getOrUndefined(_reflection.id.oasName).split<bool>(
    defined: (v) => v == null ? false :
(

    
            
            v is String
),
    unDefined: () => !_reflection.id.required,
)) {
    return false;
  }
if (!src.getOrUndefined(_reflection.address.oasName).split<bool>(
    defined: (v) => v == null ? false :
(

    
            PetsMulticontentTestPostRequestAddress.canDeserialize(v)
            
),
    unDefined: () => !_reflection.address.required,
)) {
    return false;
  }
if (!src.getOrUndefined(_reflection.profileImage.oasName).split<bool>(
    defined: (v) => v == null ? false :
(

    
            
            v is XFile
),
    unDefined: () => !_reflection.profileImage.required,
)) {
    return false;
  }
  
  return true;
}

/// Deserializes a primitive Object (num, String, List, Map).
PetsMulticontentTestPostRequest _$PetsMulticontentTestPostRequestDeserialize(Object? src) {
  if (src is Map<String, dynamic>) {
    return _$PetsMulticontentTestPostRequestFromMap(src);
  } else {
        
    throw UnimplementedError();
    
  }
}
/// Checks if a primitive Object (num, String, List, Map) can be deserialized.
bool _$PetsMulticontentTestPostRequestCanDeserialize(Object? src) {
  if (src is Map<String, dynamic>) {
    return _$PetsMulticontentTestPostRequestCanFromMap(src);
  } else {
    return false;
  }
}

/// Serializes to a primitive Object (num, String, List, Map).
Object? _$PetsMulticontentTestPostRequestSerialize(PetsMulticontentTestPostRequest src) {
  
  return src.toMap();
  
  
}


/*
XmlElement _$PetsMulticontentTestPostRequestToXml(PetsMulticontentTestPostRequest instance) {
  final reflection = PetsMulticontentTestPostRequestXmlReflection.instance;
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

PetsMulticontentTestPostRequest _$PetsMulticontentTestPostRequestFromXml(XmlElement src) {
  final reflection = PetsMulticontentTestPostRequestXmlReflection.instance;
  return PetsMulticontentTestPostRequest.$all(

  );
}
*/

