// Model reflection

part of 'api_response.dart';


//class reflection

class ApiResponseReflection extends ClassReflection<ApiResponse> {
  static ApiResponseReflection instanceGetter() => instance;
  static const instance = ApiResponseReflection._(
    modelName: r'ApiResponse',
    className: r'ApiResponse',
    codePart: PropertyReflection<ApiResponse, UndefinedWrapper<
            int
>>(
      dartName: r'code',
      nullable: false,
      required: false,
      oasName: r'code',
      oasType: r'integer',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _codeGetter,
      setter: _codeSetter,
    ),
    typePart: PropertyReflection<ApiResponse, UndefinedWrapper<
            String
>>(
      dartName: r'type',
      nullable: false,
      required: false,
      oasName: r'type',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _typeGetter,
      setter: _typeSetter,
    ),
    messagePart: PropertyReflection<ApiResponse, UndefinedWrapper<
            String
>>(
      dartName: r'message',
      nullable: false,
      required: false,
      oasName: r'message',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _messageGetter,
      setter: _messageSetter,
    ),
    
    
    additionalPropertiesPart: AdditionalPropertiesReflection(
      parentReflectionGetter: instanceGetter,
      itemsReflection: ItemsReflection<ApiResponse, Object
?>(parentReflectionGetter: instanceGetter,),
          ),
  );
  const ApiResponseReflection._({
    required this.modelName,
    required this.className,
    required this.codePart,
    required this.typePart,
    required this.messagePart,
    this.discriminatorKey,
    this.discriminatorMappings = const {},
    this.discriminatorImplicitMappings = const {},
        
    required this.additionalPropertiesPart,
  });

  final PropertyReflection<ApiResponse, UndefinedWrapper<
            int
>> codePart;
  static UndefinedWrapper<
            int
> _codeGetter(ApiResponse parent) {
    return parent.code;
  }
  static void _codeSetter(ApiResponse parent, UndefinedWrapper<
            int
> value) {
    parent.code = value;
  }
  final PropertyReflection<ApiResponse, UndefinedWrapper<
            String
>> typePart;
  static UndefinedWrapper<
            String
> _typeGetter(ApiResponse parent) {
    return parent.type;
  }
  static void _typeSetter(ApiResponse parent, UndefinedWrapper<
            String
> value) {
    parent.type = value;
  }
  final PropertyReflection<ApiResponse, UndefinedWrapper<
            String
>> messagePart;
  static UndefinedWrapper<
            String
> _messageGetter(ApiResponse parent) {
    return parent.message;
  }
  static void _messageSetter(ApiResponse parent, UndefinedWrapper<
            String
> value) {
    parent.message = value;
  }



  @override
  final Map<String, ClassReflection> discriminatorMappings;
  @override
  final Map<String, ClassReflection> discriminatorImplicitMappings;
  @override
  final String? discriminatorKey;
  @override
  final String modelName;
  @override
  final String className;


  @override
  List<PropertyReflection<ApiResponse, dynamic>> get properties => [
    codePart,
typePart,
messagePart,
  ];

  final AdditionalPropertiesReflection<ApiResponse, Object
?> additionalPropertiesPart;

  
  
  @override
  List<PartReflection<ApiResponse, dynamic>> get parts => [
    ...super.parts,
    additionalPropertiesPart,
  ];
  @override
  List<AllOfReflection<ApiResponse, dynamic>> get allOfs => [
    
  ];


  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => ApiResponse.canDeserialize(src);
  @override
  ApiResponse Function(Object? src) get deserializeFunction =>
      (src) => ApiResponse.deserialize(src);

  @override
  Object? Function(ApiResponse src) get serializeFunction =>
      (src) => src.serialize();

  /// Gets an example of ApiResponse.
  /// - [discriminators]: The set of aggregated discriminator properties in the target type, accessed by
  ///  calling [aggregatedDiscriminators].
  ApiResponse example({Map<String, (ClassReflection, PropertyReflection)> discriminators = const {}}) {
    final _reflection = this;
    if (discriminators.isEmpty) discriminators = _reflection.aggregatedDiscriminators;
    return ApiResponse(
      code: () {
        PartReflection? _partReflection = _reflection.codePart;
        
        return UndefinedWrapper(


            
            


    
    exampleint()


);
      }(),
      type: () {
        PartReflection? _partReflection = _reflection.typePart;
        
        final disc = discriminators[r'type'];
        if (disc != null) {
          final result = exampleDiscriminator(_partReflection, disc);
          if (result != null) {
            return UndefinedWrapper(result);
          }
        }
        
        return UndefinedWrapper(


            
            


    
    exampleString()


);
      }(),
      message: () {
        PartReflection? _partReflection = _reflection.messagePart;
        
        final disc = discriminators[r'message'];
        if (disc != null) {
          final result = exampleDiscriminator(_partReflection, disc);
          if (result != null) {
            return UndefinedWrapper(result);
          }
        }
        
        return UndefinedWrapper(


            
            


    
    exampleString()


);
      }(),
      additionalProperties: () { PartReflection? _partReflection = _reflection.additionalPropertiesPart; return AdditionalProperties(exampleMap(() => exampleNullable(() =>

exampleObject()



 ) )); }(),
      
    );
  }
}

class ApiResponseXmlReflection {
    const ApiResponseXmlReflection();
}

