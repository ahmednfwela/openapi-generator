// Model reflection

part of '__return.dart';


//class reflection

class $ReturnReflection extends ClassReflection<$Return> {
  static $ReturnReflection instanceGetter() => instance;
  static const instance = $ReturnReflection._(
    modelName: r'Return',
    className: r'$Return',
    $returnPart: PropertyReflection<$Return, UndefinedWrapper<
            int

>>(
      dartName: r'$return',
      nullable: false,
      required: false,
      oasName: r'return',
      oasType: r'integer',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _$returnGetter,
      setter: _$returnSetter,
    ),
    
    
    additionalPropertiesPart: AdditionalPropertiesReflection(
      parentReflectionGetter: instanceGetter,
      itemsReflection: ItemsReflection<$Return, Object

?>(parentReflectionGetter: instanceGetter,),
          ),
  );
  const $ReturnReflection._({
    required this.modelName,
    required this.className,
    required this.$returnPart,
    this.discriminatorKey,
    this.discriminatorMappings = const {},
    this.discriminatorImplicitMappings = const {},
        
    required this.additionalPropertiesPart,
  });

  final PropertyReflection<$Return, UndefinedWrapper<
            int

>> $returnPart;
  static UndefinedWrapper<
            int

> _$returnGetter($Return parent) {
    return parent.$return;
  }
  static void _$returnSetter($Return parent, UndefinedWrapper<
            int

> value) {
    parent.$return = value;
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
  List<PropertyReflection<$Return, dynamic>> get properties => [
    $returnPart,
  ];

  final AdditionalPropertiesReflection<$Return, Object

?> additionalPropertiesPart;

  
  
  @override
  List<PartReflection<$Return, dynamic>> get parts => [
    ...super.parts,
    additionalPropertiesPart,
  ];
  @override
  List<AllOfReflection<$Return, dynamic>> get allOfs => [
    
  ];


  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => $Return.canDeserialize(src);
  @override
  $Return Function(Object? src) get deserializeFunction =>
      (src) => $Return.deserialize(src);

  @override
  Object? Function($Return src) get serializeFunction =>
      (src) => src.serialize();

  /// Gets an example of $Return.
  /// - [discriminators]: The set of aggregated discriminator properties in the target type, accessed by
  ///  calling [aggregatedDiscriminators].
  $Return example({AggregatedDiscriminatorsResult? discriminators, Map<DiscriminatorKey, MapEntry<DiscriminatorValue, ClassReflection>>
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

    final exampleResult = $Return(
      $return: () {
        var result = 


            
            


    
    exampleint()


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


class $ReturnXmlReflection {
    const $ReturnXmlReflection();
}

