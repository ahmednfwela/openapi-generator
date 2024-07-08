// Model reflection

part of 'health_check_result.dart';


//class reflection

class HealthCheckResultReflection extends ClassReflection<HealthCheckResult> {
  static HealthCheckResultReflection instanceGetter() => instance;
  static const instance = HealthCheckResultReflection._(
    modelName: r'HealthCheckResult',
    className: r'HealthCheckResult',
    nullableMessagePart: PropertyReflection<HealthCheckResult, UndefinedWrapper<
            String

?>>(
      dartName: r'nullableMessage',
      nullable: true,
      required: false,
      oasName: r'NullableMessage',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _nullableMessageGetter,
      setter: _nullableMessageSetter,
    ),
    
    
    additionalPropertiesPart: AdditionalPropertiesReflection(
      parentReflectionGetter: instanceGetter,
      itemsReflection: ItemsReflection<HealthCheckResult, Object

?>(parentReflectionGetter: instanceGetter,),
          ),
  );
  const HealthCheckResultReflection._({
    required this.modelName,
    required this.className,
    required this.nullableMessagePart,
    this.discriminatorKey,
    this.discriminatorMappings = const {},
    this.discriminatorImplicitMappings = const {},
        
    required this.additionalPropertiesPart,
  });

  final PropertyReflection<HealthCheckResult, UndefinedWrapper<
            String

?>> nullableMessagePart;
  static UndefinedWrapper<
            String

?> _nullableMessageGetter(HealthCheckResult parent) {
    return parent.nullableMessage;
  }
  static void _nullableMessageSetter(HealthCheckResult parent, UndefinedWrapper<
            String

?> value) {
    parent.nullableMessage = value;
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
  List<PropertyReflection<HealthCheckResult, dynamic>> get properties => [
    nullableMessagePart,
  ];

  final AdditionalPropertiesReflection<HealthCheckResult, Object

?> additionalPropertiesPart;

  
  
  @override
  List<PartReflection<HealthCheckResult, dynamic>> get parts => [
    ...super.parts,
    additionalPropertiesPart,
  ];
  @override
  List<AllOfReflection<HealthCheckResult, dynamic>> get allOfs => [
    
  ];


  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => HealthCheckResult.canDeserialize(src);
  @override
  HealthCheckResult Function(Object? src) get deserializeFunction =>
      (src) => HealthCheckResult.deserialize(src);

  @override
  Object? Function(HealthCheckResult src) get serializeFunction =>
      (src) => src.serialize();

  /// Gets an example of HealthCheckResult.
  /// - [discriminators]: The set of aggregated discriminator properties in the target type, accessed by
  ///  calling [aggregatedDiscriminators].
  HealthCheckResult example({AggregatedDiscriminatorsResult? discriminators, Map<DiscriminatorKey, MapEntry<DiscriminatorValue, ClassReflection>>
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

    final exampleResult = HealthCheckResult(
      nullableMessage: () {
        var result = exampleNullable(() =>


            
            


    
    exampleString()


 ) ;
        final preSelectedResult = discriminatorExampleResults[nullableMessagePart.oasName]?.key.key;
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


class HealthCheckResultXmlReflection {
    const HealthCheckResultXmlReflection();
}

