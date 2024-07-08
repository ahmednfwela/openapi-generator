// Model reflection

part of 'equilateral_triangle.dart';


//class reflection

class EquilateralTriangleReflection extends ClassReflection<EquilateralTriangle> {
  static EquilateralTriangleReflection instanceGetter() => instance;
  static const instance = EquilateralTriangleReflection._(
    modelName: r'EquilateralTriangle',
    className: r'EquilateralTriangle',
    shapeTypePart: PropertyReflection<EquilateralTriangle, 
            String

>(
      dartName: r'shapeType',
      nullable: false,
      required: true,
      oasName: r'shapeType',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _shapeTypeGetter,
      setter: _shapeTypeSetter,
    ),
    triangleTypePart: PropertyReflection<EquilateralTriangle, 
            String

>(
      dartName: r'triangleType',
      nullable: false,
      required: true,
      oasName: r'triangleType',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _triangleTypeGetter,
      setter: _triangleTypeSetter,
    ),
    
    
    additionalPropertiesPart: AdditionalPropertiesReflection(
      parentReflectionGetter: instanceGetter,
      itemsReflection: ItemsReflection<EquilateralTriangle, Object

?>(parentReflectionGetter: instanceGetter,),
          ),
  );
  const EquilateralTriangleReflection._({
    required this.modelName,
    required this.className,
    required this.shapeTypePart,
    required this.triangleTypePart,
    this.discriminatorKey,
    this.discriminatorMappings = const {},
    this.discriminatorImplicitMappings = const {},
        
    required this.additionalPropertiesPart,
  });

  final PropertyReflection<EquilateralTriangle, 
            String

> shapeTypePart;
  static 
            String

 _shapeTypeGetter(EquilateralTriangle parent) {
    return parent.shapeType;
  }
  static void _shapeTypeSetter(EquilateralTriangle parent, 
            String

 value) {
    parent.shapeType = value;
  }
  final PropertyReflection<EquilateralTriangle, 
            String

> triangleTypePart;
  static 
            String

 _triangleTypeGetter(EquilateralTriangle parent) {
    return parent.triangleType;
  }
  static void _triangleTypeSetter(EquilateralTriangle parent, 
            String

 value) {
    parent.triangleType = value;
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
  List<PropertyReflection<EquilateralTriangle, dynamic>> get properties => [
    shapeTypePart,
triangleTypePart,
  ];

  final AdditionalPropertiesReflection<EquilateralTriangle, Object

?> additionalPropertiesPart;

  
  
  @override
  List<PartReflection<EquilateralTriangle, dynamic>> get parts => [
    ...super.parts,
    additionalPropertiesPart,
  ];
  @override
  List<AllOfReflection<EquilateralTriangle, dynamic>> get allOfs => [
    
  ];

  @override
  List<OneOfReflection<EquilateralTriangle, dynamic>> get oneOfs => [
    
  ];
  @override
  List<AnyOfReflection<EquilateralTriangle, dynamic>> get anyOfs => [
    
  ];

  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => EquilateralTriangle.canDeserialize(src);
  @override
  EquilateralTriangle Function(Object? src) get deserializeFunction =>
      (src) => EquilateralTriangle.deserialize(src);

  @override
  Object? Function(EquilateralTriangle src) get serializeFunction =>
      (src) => src.serialize();

  /// Gets an example of EquilateralTriangle.
  /// - [discriminators]: The set of aggregated discriminator properties in the target type, accessed by
  ///  calling [aggregatedDiscriminators].
  EquilateralTriangle example({AggregatedDiscriminatorsResult? discriminators, Map<DiscriminatorKey, MapEntry<DiscriminatorValue, ClassReflection>>
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

    final exampleResult = EquilateralTriangle(
      shapeType: () {
        var result = 


            
            


    
    exampleString()


;
        final preSelectedResult = discriminatorExampleResults[shapeTypePart.oasName]?.key.key;
        if (preSelectedResult != null) {
          result = preSelectedResult;
        }
        return result;
      } (),
      triangleType: () {
        var result = 


            
            


    
    exampleString()


;
        final preSelectedResult = discriminatorExampleResults[triangleTypePart.oasName]?.key.key;
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


class EquilateralTriangleXmlReflection {
    const EquilateralTriangleXmlReflection();
}

