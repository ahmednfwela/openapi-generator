// ignore_for_file: unnecessary_cast, unused_local_variable

part of 'fake_any_of_w_ith_same_erasure_get200_response.dart';


//class serialization

Map<String, dynamic> _$FakeAnyOfWIthSameErasureGet200ResponseToMap(FakeAnyOfWIthSameErasureGet200Response instance) {
  final _reflection = FakeAnyOfWIthSameErasureGet200ResponseReflection.instance;
  return <String, dynamic>{
    ...instance.additionalProperties.map((key, v) => MapEntry(key, v)),
    
  };
}

FakeAnyOfWIthSameErasureGet200Response _$FakeAnyOfWIthSameErasureGet200ResponseFromMap(Map<String, dynamic> src) {
  const _reflection = FakeAnyOfWIthSameErasureGet200ResponseReflection.instance;
  return FakeAnyOfWIthSameErasureGet200Response.$all(
        additionalProperties: AdditionalProperties(src.except(_reflection.knownKeys).map((key, v) => MapEntry(key, 
(
v

)
))),
    
    anyOf0:  UndefinedWrapper.undefined(),
    anyOf1:  UndefinedWrapper.undefined(),
  );
}

bool _$FakeAnyOfWIthSameErasureGet200ResponseCanFromMap(Map<String, dynamic> src) {
  final _reflection = FakeAnyOfWIthSameErasureGet200ResponseReflection.instance;

    if (!src.except(_reflection.knownKeys).values.every((v) => v == null ? true :
(
true
))) {
    return false;
  }



  final anyOfs = [
  
  ];
  final validAnyOfs = anyOfs.where((x) => x()).take(1).length;
  if (validAnyOfs == 0) {
    return false;
  }
  
  return true;
}

/// Deserializes a primitive Object (num, String, List, Map).
FakeAnyOfWIthSameErasureGet200Response _$FakeAnyOfWIthSameErasureGet200ResponseDeserialize(Object? src) {
  if (src is Map<String, dynamic>) {
    return _$FakeAnyOfWIthSameErasureGet200ResponseFromMap(src);
  } else {
    
    final v = src;
    return FakeAnyOfWIthSameErasureGet200Response.$all(

      anyOf0: (v == null ? false :
(

    
            
            v is List && v.every((v) => v == null ? false :
(

    
            
            (v is String
    
    
    
    
)
))
)) ? UndefinedWrapper(
(

            
            v as List
            

)

.map((v) => 
(

            
                    ( v is String ? v as String :




throwArgumentMismatch(String, v)

)

)


).toList()
) : UndefinedWrapper.undefined(),
      anyOf1: (v == null ? false :
(

    
            
            v is List && v.every((v) => v == null ? false :
(

    
            
            (v is int
     || (int.tryParse(v.toString()) != null)
    
    
    
)
))
)) ? UndefinedWrapper(
(

            
            v as List
            

)

.map((v) => 
(

            
                    ( v is int ? v as int :
int.parse(v.toString())



)

)


).toList()
) : UndefinedWrapper.undefined(),
      // Additional Properties only make sense if the src is a Map<String, dynamic>
      additionalProperties: AdditionalProperties(),
    );
    
  }
}
/// Checks if a primitive Object (num, String, List, Map) can be deserialized.
bool _$FakeAnyOfWIthSameErasureGet200ResponseCanDeserialize(Object? src) {
  if (src is Map<String, dynamic>) {
    return _$FakeAnyOfWIthSameErasureGet200ResponseCanFromMap(src);
  } else {
    final v = src;
    final anyOfs = [
      () => v == null ? false :
(

    
            
            v is List && v.every((v) => v == null ? false :
(

    
            
            (v is String
    
    
    
    
)
))
),
      () => v == null ? false :
(

    
            
            v is List && v.every((v) => v == null ? false :
(

    
            
            (v is int
     || (int.tryParse(v.toString()) != null)
    
    
    
)
))
),
    ];
    final validAnyOfs = anyOfs.where((x) => x()).take(1).length;
    if (validAnyOfs > 0) {
      return true;
    }
    return false;
  }
}

/// Serializes to a primitive Object (num, String, List, Map).
Object? _$FakeAnyOfWIthSameErasureGet200ResponseSerialize(FakeAnyOfWIthSameErasureGet200Response src) {
  Object? initialResult = () {
    
    
    if (src.anyOf0.isDefined) {final v = src.anyOf0.valueRequired; return v.map((v) => v).toList(); }
    
    if (src.anyOf1.isDefined) {final v = src.anyOf1.valueRequired; return v.map((v) => v).toList(); }
    
    return null;
  }();
  if (initialResult is Map<String, Object?>) {
    return {
      ...src.additionalProperties,
      ...initialResult,
    };
  }
  return initialResult;
}


/*
XmlElement _$FakeAnyOfWIthSameErasureGet200ResponseToXml(FakeAnyOfWIthSameErasureGet200Response instance) {
  final reflection = FakeAnyOfWIthSameErasureGet200ResponseXmlReflection.instance;
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

FakeAnyOfWIthSameErasureGet200Response _$FakeAnyOfWIthSameErasureGet200ResponseFromXml(XmlElement src) {
  final reflection = FakeAnyOfWIthSameErasureGet200ResponseXmlReflection.instance;
  return FakeAnyOfWIthSameErasureGet200Response.$all(

  );
}
*/

