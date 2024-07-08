// Model reflection

part of 'foo_get_default_response.dart';


//class reflection

class FooGetDefaultResponseReflection extends ClassReflection<FooGetDefaultResponse> {
  static FooGetDefaultResponseReflection instanceGetter() => instance;
  static const instance = FooGetDefaultResponseReflection._(
    modelName: r'_foo_get_default_response',
    className: r'FooGetDefaultResponse',
    stringPart: PropertyReflection<FooGetDefaultResponse, UndefinedWrapper<
            Foo

>>(
      dartName: r'string',
      nullable: false,
      required: false,
      oasName: r'string',
      oasType: r'Foo',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      classReflection: FooReflection.instance,
      getter: _stringGetter,
      setter: _stringSetter,
    ),
    
    
    additionalPropertiesPart: AdditionalPropertiesReflection(
      parentReflectionGetter: instanceGetter,
      itemsReflection: ItemsReflection<FooGetDefaultResponse, Object

?>(parentReflectionGetter: instanceGetter,),
          ),
  );
  const FooGetDefaultResponseReflection._({
    required this.modelName,
    required this.className,
    required this.stringPart,
    this.discriminatorKey,
    this.discriminatorMappings = const {},
    this.discriminatorImplicitMappings = const {},
        
    required this.additionalPropertiesPart,
  });

  final PropertyReflection<FooGetDefaultResponse, UndefinedWrapper<
            Foo

>> stringPart;
  static UndefinedWrapper<
            Foo

> _stringGetter(FooGetDefaultResponse parent) {
    return parent.string;
  }
  static void _stringSetter(FooGetDefaultResponse parent, UndefinedWrapper<
            Foo

> value) {
    parent.string = value;
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
  List<PropertyReflection<FooGetDefaultResponse, dynamic>> get properties => [
    stringPart,
  ];

  final AdditionalPropertiesReflection<FooGetDefaultResponse, Object

?> additionalPropertiesPart;

  
  
  @override
  List<PartReflection<FooGetDefaultResponse, dynamic>> get parts => [
    ...super.parts,
    additionalPropertiesPart,
  ];
  @override
  List<AllOfReflection<FooGetDefaultResponse, dynamic>> get allOfs => [
    
  ];


  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => FooGetDefaultResponse.canDeserialize(src);
  @override
  FooGetDefaultResponse Function(Object? src) get deserializeFunction =>
      (src) => FooGetDefaultResponse.deserialize(src);

  @override
  Object? Function(FooGetDefaultResponse src) get serializeFunction =>
      (src) => src.serialize();

  /// Gets an example of FooGetDefaultResponse.
  /// - [discriminators]: The set of aggregated discriminator properties in the target type, accessed by
  ///  calling [aggregatedDiscriminators].
  FooGetDefaultResponse example({AggregatedDiscriminatorsResult? discriminators, Map<DiscriminatorKey, MapEntry<DiscriminatorValue, ClassReflection>>
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

    final exampleResult = FooGetDefaultResponse(
      string: () {
        var result = 


            
            


    FooReflection.instance.example()
    


;
        return UndefinedWrapper(result);
      } (),
      additionalProperties: () { return AdditionalProperties(exampleMap(() => exampleNullable(() =>

exampleObject()



 ) )); }(),
    );
    
    return exampleResult;
  }
}


class FooGetDefaultResponseXmlReflection {
    const FooGetDefaultResponseXmlReflection();
}

