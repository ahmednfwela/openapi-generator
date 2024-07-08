// Model reflection

part of 'model_with_one_of_any_of_properties.dart';


//class reflection

class ModelWithOneOfAnyOfPropertiesReflection extends ClassReflection<ModelWithOneOfAnyOfProperties> {
  static ModelWithOneOfAnyOfPropertiesReflection instanceGetter() => instance;
  static const instance = ModelWithOneOfAnyOfPropertiesReflection._(
    modelName: r'ModelWithOneOfAnyOfProperties',
    className: r'ModelWithOneOfAnyOfProperties',
    oneofPropPart: PropertyReflection<ModelWithOneOfAnyOfProperties, UndefinedWrapper<
            ArrayOneOf

>>(
      dartName: r'oneofProp',
      nullable: false,
      required: false,
      oasName: r'oneof_prop',
      oasType: r'ArrayOneOf',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      classReflection: ArrayOneOfReflection.instance,
      getter: _oneofPropGetter,
      setter: _oneofPropSetter,
    ),
    anyofPropPart: PropertyReflection<ModelWithOneOfAnyOfProperties, UndefinedWrapper<
            ArrayAnyOf

>>(
      dartName: r'anyofProp',
      nullable: false,
      required: false,
      oasName: r'anyof_prop',
      oasType: r'ArrayAnyOf',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      classReflection: ArrayAnyOfReflection.instance,
      getter: _anyofPropGetter,
      setter: _anyofPropSetter,
    ),
    
    
    additionalPropertiesPart: AdditionalPropertiesReflection(
      parentReflectionGetter: instanceGetter,
      itemsReflection: ItemsReflection<ModelWithOneOfAnyOfProperties, Object

?>(parentReflectionGetter: instanceGetter,),
          ),
  );
  const ModelWithOneOfAnyOfPropertiesReflection._({
    required this.modelName,
    required this.className,
    required this.oneofPropPart,
    required this.anyofPropPart,
    this.discriminatorKey,
    this.discriminatorMappings = const {},
    this.discriminatorImplicitMappings = const {},
        
    required this.additionalPropertiesPart,
  });

  final PropertyReflection<ModelWithOneOfAnyOfProperties, UndefinedWrapper<
            ArrayOneOf

>> oneofPropPart;
  static UndefinedWrapper<
            ArrayOneOf

> _oneofPropGetter(ModelWithOneOfAnyOfProperties parent) {
    return parent.oneofProp;
  }
  static void _oneofPropSetter(ModelWithOneOfAnyOfProperties parent, UndefinedWrapper<
            ArrayOneOf

> value) {
    parent.oneofProp = value;
  }
  final PropertyReflection<ModelWithOneOfAnyOfProperties, UndefinedWrapper<
            ArrayAnyOf

>> anyofPropPart;
  static UndefinedWrapper<
            ArrayAnyOf

> _anyofPropGetter(ModelWithOneOfAnyOfProperties parent) {
    return parent.anyofProp;
  }
  static void _anyofPropSetter(ModelWithOneOfAnyOfProperties parent, UndefinedWrapper<
            ArrayAnyOf

> value) {
    parent.anyofProp = value;
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
  List<PropertyReflection<ModelWithOneOfAnyOfProperties, dynamic>> get properties => [
    oneofPropPart,
anyofPropPart,
  ];

  final AdditionalPropertiesReflection<ModelWithOneOfAnyOfProperties, Object

?> additionalPropertiesPart;

  
  
  @override
  List<PartReflection<ModelWithOneOfAnyOfProperties, dynamic>> get parts => [
    ...super.parts,
    additionalPropertiesPart,
  ];
  @override
  List<AllOfReflection<ModelWithOneOfAnyOfProperties, dynamic>> get allOfs => [
    
  ];


  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => ModelWithOneOfAnyOfProperties.canDeserialize(src);
  @override
  ModelWithOneOfAnyOfProperties Function(Object? src) get deserializeFunction =>
      (src) => ModelWithOneOfAnyOfProperties.deserialize(src);

  @override
  Object? Function(ModelWithOneOfAnyOfProperties src) get serializeFunction =>
      (src) => src.serialize();

  /// Gets an example of ModelWithOneOfAnyOfProperties.
  /// - [discriminators]: The set of aggregated discriminator properties in the target type, accessed by
  ///  calling [aggregatedDiscriminators].
  ModelWithOneOfAnyOfProperties example({AggregatedDiscriminatorsResult? discriminators, Map<DiscriminatorKey, MapEntry<DiscriminatorValue, ClassReflection>>
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

    final exampleResult = ModelWithOneOfAnyOfProperties(
      oneofProp: () {
        var result = 


            
            


    ArrayOneOfReflection.instance.example()
    


;
        return UndefinedWrapper(result);
      } (),
      anyofProp: () {
        var result = 


            
            


    ArrayAnyOfReflection.instance.example()
    


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


class ModelWithOneOfAnyOfPropertiesXmlReflection {
    const ModelWithOneOfAnyOfPropertiesXmlReflection();
}

