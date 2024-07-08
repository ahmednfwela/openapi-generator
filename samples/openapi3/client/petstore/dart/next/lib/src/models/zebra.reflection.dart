// Model reflection

part of 'zebra.dart';


//class reflection

class ZebraReflection extends ClassReflection<Zebra> {
  static ZebraReflection instanceGetter() => instance;
  static const instance = ZebraReflection._(
    modelName: r'zebra',
    className: r'Zebra',
    typePart: PropertyReflection<Zebra, UndefinedWrapper<
            ZebraTypeEnum

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
    classNamePart: PropertyReflection<Zebra, 
            String

>(
      dartName: r'className',
      nullable: false,
      required: true,
      oasName: r'className',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _classNameGetter,
      setter: _classNameSetter,
    ),
    
    
    additionalPropertiesPart: AdditionalPropertiesReflection(
      parentReflectionGetter: instanceGetter,
      itemsReflection: ItemsReflection<Zebra, Object

?>(parentReflectionGetter: instanceGetter,),
          ),
  );
  const ZebraReflection._({
    required this.modelName,
    required this.className,
    required this.typePart,
    required this.classNamePart,
    this.discriminatorKey,
    this.discriminatorMappings = const {},
    this.discriminatorImplicitMappings = const {},
        
    required this.additionalPropertiesPart,
  });

  final PropertyReflection<Zebra, UndefinedWrapper<
            ZebraTypeEnum

>> typePart;
  static UndefinedWrapper<
            ZebraTypeEnum

> _typeGetter(Zebra parent) {
    return parent.type;
  }
  static void _typeSetter(Zebra parent, UndefinedWrapper<
            ZebraTypeEnum

> value) {
    parent.type = value;
  }
  final PropertyReflection<Zebra, 
            String

> classNamePart;
  static 
            String

 _classNameGetter(Zebra parent) {
    return parent.className;
  }
  static void _classNameSetter(Zebra parent, 
            String

 value) {
    parent.className = value;
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
  List<PropertyReflection<Zebra, dynamic>> get properties => [
    typePart,
classNamePart,
  ];

  final AdditionalPropertiesReflection<Zebra, Object

?> additionalPropertiesPart;

  
  
  @override
  List<PartReflection<Zebra, dynamic>> get parts => [
    ...super.parts,
    additionalPropertiesPart,
  ];
  @override
  List<AllOfReflection<Zebra, dynamic>> get allOfs => [
    
  ];


  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => Zebra.canDeserialize(src);
  @override
  Zebra Function(Object? src) get deserializeFunction =>
      (src) => Zebra.deserialize(src);

  @override
  Object? Function(Zebra src) get serializeFunction =>
      (src) => src.serialize();

  /// Gets an example of Zebra.
  /// - [discriminators]: The set of aggregated discriminator properties in the target type, accessed by
  ///  calling [aggregatedDiscriminators].
  Zebra example({AggregatedDiscriminatorsResult? discriminators, Map<DiscriminatorKey, MapEntry<DiscriminatorValue, ClassReflection>>
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

    final exampleResult = Zebra(
      type: () {
        var result = 


            exampleEnum(ZebraTypeEnum.values)



;
        return UndefinedWrapper(result);
      } (),
      className: () {
        var result = 


            
            


    
    exampleString()


;
        final preSelectedResult = discriminatorExampleResults[classNamePart.oasName]?.key.key;
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


class ZebraXmlReflection {
    const ZebraXmlReflection();
}

