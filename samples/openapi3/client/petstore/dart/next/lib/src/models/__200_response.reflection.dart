// Model reflection

part of '__200_response.dart';


//class reflection

class $200ResponseReflection extends ClassReflection<$200Response> {
  static $200ResponseReflection instanceGetter() => instance;
  static const instance = $200ResponseReflection._(
    modelName: r'200_response',
    className: r'$200Response',
    namePart: PropertyReflection<$200Response, UndefinedWrapper<
            int

>>(
      dartName: r'name',
      nullable: false,
      required: false,
      oasName: r'name',
      oasType: r'integer',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _nameGetter,
      setter: _nameSetter,
    ),
    propertyClassPart: PropertyReflection<$200Response, UndefinedWrapper<
            String

>>(
      dartName: r'propertyClass',
      nullable: false,
      required: false,
      oasName: r'class',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _propertyClassGetter,
      setter: _propertyClassSetter,
    ),
    
    
    additionalPropertiesPart: AdditionalPropertiesReflection(
      parentReflectionGetter: instanceGetter,
      itemsReflection: ItemsReflection<$200Response, Object

?>(parentReflectionGetter: instanceGetter,),
          ),
  );
  const $200ResponseReflection._({
    required this.modelName,
    required this.className,
    required this.namePart,
    required this.propertyClassPart,
    this.discriminatorKey,
    this.discriminatorMappings = const {},
    this.discriminatorImplicitMappings = const {},
        
    required this.additionalPropertiesPart,
  });

  final PropertyReflection<$200Response, UndefinedWrapper<
            int

>> namePart;
  static UndefinedWrapper<
            int

> _nameGetter($200Response parent) {
    return parent.name;
  }
  static void _nameSetter($200Response parent, UndefinedWrapper<
            int

> value) {
    parent.name = value;
  }
  final PropertyReflection<$200Response, UndefinedWrapper<
            String

>> propertyClassPart;
  static UndefinedWrapper<
            String

> _propertyClassGetter($200Response parent) {
    return parent.propertyClass;
  }
  static void _propertyClassSetter($200Response parent, UndefinedWrapper<
            String

> value) {
    parent.propertyClass = value;
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
  List<PropertyReflection<$200Response, dynamic>> get properties => [
    namePart,
propertyClassPart,
  ];

  final AdditionalPropertiesReflection<$200Response, Object

?> additionalPropertiesPart;

  
  
  @override
  List<PartReflection<$200Response, dynamic>> get parts => [
    ...super.parts,
    additionalPropertiesPart,
  ];
  @override
  List<AllOfReflection<$200Response, dynamic>> get allOfs => [
    
  ];


  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => $200Response.canDeserialize(src);
  @override
  $200Response Function(Object? src) get deserializeFunction =>
      (src) => $200Response.deserialize(src);

  @override
  Object? Function($200Response src) get serializeFunction =>
      (src) => src.serialize();

  /// Gets an example of $200Response.
  /// - [discriminators]: The set of aggregated discriminator properties in the target type, accessed by
  ///  calling [aggregatedDiscriminators].
  $200Response example({AggregatedDiscriminatorsResult? discriminators, Map<DiscriminatorKey, MapEntry<DiscriminatorValue, ClassReflection>>
        discriminatorExampleResults = const {},}) {
    final _reflection = this;
    final actualDiscriminators = discriminators ?? _reflection.aggregatedDiscriminators;
    discriminatorExampleResults = Map.from(discriminatorExampleResults);
    for (final MapEntry(key: propName, value: mappings) in actualDiscriminators.entries) {
      if (discriminatorExampleResults.containsKey(propName)) {
        continue;
      }
      final r =  exampleDiscriminator(mappings);
      if (r != null){
        discriminatorExampleResults[propName] = r;
      }
    }

    final exampleResult = $200Response(
      name: () {
        var result = 


            
            


    
    exampleint()


;
        return UndefinedWrapper(result);
      } (),
      propertyClass: () {
        var result = 


            
            


    
    exampleString()


;
        final preSelectedResult = discriminatorExampleResults[propertyClassPart.oasName]?.key.key;
        if (preSelectedResult != null) {
          result = preSelectedResult;
        }
        return UndefinedWrapper(result);
      } (),
      additionalProperties: () { return AdditionalProperties(exampleMap(() => exampleNullable(() =>

exampleObject()



 ) )); }(),
    );
    
    return exampleResult;
  }
}


class $200ResponseXmlReflection {
    const $200ResponseXmlReflection();
}

