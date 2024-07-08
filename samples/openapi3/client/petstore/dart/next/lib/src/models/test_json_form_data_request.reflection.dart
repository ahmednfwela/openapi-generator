// Model reflection

part of 'test_json_form_data_request.dart';


//class reflection

class TestJsonFormDataRequestReflection extends ClassReflection<TestJsonFormDataRequest> {
  static TestJsonFormDataRequestReflection instanceGetter() => instance;
  static const instance = TestJsonFormDataRequestReflection._(
    modelName: r'testJsonFormData_request',
    className: r'TestJsonFormDataRequest',
    paramPart: PropertyReflection<TestJsonFormDataRequest, 
            String

>(
      dartName: r'param',
      nullable: false,
      required: true,
      oasName: r'param',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _paramGetter,
      setter: _paramSetter,
    ),
    param2Part: PropertyReflection<TestJsonFormDataRequest, 
            String

>(
      dartName: r'param2',
      nullable: false,
      required: true,
      oasName: r'param2',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _param2Getter,
      setter: _param2Setter,
    ),
    
    
    additionalPropertiesPart: AdditionalPropertiesReflection(
      parentReflectionGetter: instanceGetter,
      itemsReflection: ItemsReflection<TestJsonFormDataRequest, Object

?>(parentReflectionGetter: instanceGetter,),
          ),
  );
  const TestJsonFormDataRequestReflection._({
    required this.modelName,
    required this.className,
    required this.paramPart,
    required this.param2Part,
    this.discriminatorKey,
    this.discriminatorMappings = const {},
    this.discriminatorImplicitMappings = const {},
        
    required this.additionalPropertiesPart,
  });

  final PropertyReflection<TestJsonFormDataRequest, 
            String

> paramPart;
  static 
            String

 _paramGetter(TestJsonFormDataRequest parent) {
    return parent.param;
  }
  static void _paramSetter(TestJsonFormDataRequest parent, 
            String

 value) {
    parent.param = value;
  }
  final PropertyReflection<TestJsonFormDataRequest, 
            String

> param2Part;
  static 
            String

 _param2Getter(TestJsonFormDataRequest parent) {
    return parent.param2;
  }
  static void _param2Setter(TestJsonFormDataRequest parent, 
            String

 value) {
    parent.param2 = value;
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
  List<PropertyReflection<TestJsonFormDataRequest, dynamic>> get properties => [
    paramPart,
param2Part,
  ];

  final AdditionalPropertiesReflection<TestJsonFormDataRequest, Object

?> additionalPropertiesPart;

  
  
  @override
  List<PartReflection<TestJsonFormDataRequest, dynamic>> get parts => [
    ...super.parts,
    additionalPropertiesPart,
  ];
  @override
  List<AllOfReflection<TestJsonFormDataRequest, dynamic>> get allOfs => [
    
  ];


  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => TestJsonFormDataRequest.canDeserialize(src);
  @override
  TestJsonFormDataRequest Function(Object? src) get deserializeFunction =>
      (src) => TestJsonFormDataRequest.deserialize(src);

  @override
  Object? Function(TestJsonFormDataRequest src) get serializeFunction =>
      (src) => src.serialize();

  /// Gets an example of TestJsonFormDataRequest.
  /// - [discriminators]: The set of aggregated discriminator properties in the target type, accessed by
  ///  calling [aggregatedDiscriminators].
  TestJsonFormDataRequest example({AggregatedDiscriminatorsResult? discriminators, Map<DiscriminatorKey, MapEntry<DiscriminatorValue, ClassReflection>>
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

    final exampleResult = TestJsonFormDataRequest(
      param: () {
        var result = 


            
            


    
    exampleString()


;
        final preSelectedResult = discriminatorExampleResults[paramPart.oasName]?.key.key;
        if (preSelectedResult != null) {
          result = preSelectedResult;
        }
        return result;
      } (),
      param2: () {
        var result = 


            
            


    
    exampleString()


;
        final preSelectedResult = discriminatorExampleResults[param2Part.oasName]?.key.key;
        if (preSelectedResult != null) {
          result = preSelectedResult;
        }
        return result;
      } (),
      additionalProperties: () { return AdditionalProperties(exampleMap(() => exampleNullable(() =>

exampleObject()



 ) )); }(),
    );
    
    return exampleResult;
  }
}


class TestJsonFormDataRequestXmlReflection {
    const TestJsonFormDataRequestXmlReflection();
}

