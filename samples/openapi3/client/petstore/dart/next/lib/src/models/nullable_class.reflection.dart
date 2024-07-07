// Model reflection

part of 'nullable_class.dart';


//class reflection

class NullableClassReflection extends ClassReflection<NullableClass> {
  static NullableClassReflection instanceGetter() => instance;
  static const instance = NullableClassReflection._(
    modelName: r'NullableClass',
    className: r'NullableClass',
    integerPropPart: PropertyReflection<NullableClass, UndefinedWrapper<
            int
?>>(
      dartName: r'integerProp',
      nullable: true,
      required: false,
      oasName: r'integer_prop',
      oasType: r'integer',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _integerPropGetter,
      setter: _integerPropSetter,
    ),
    numberPropPart: PropertyReflection<NullableClass, UndefinedWrapper<
            num
?>>(
      dartName: r'numberProp',
      nullable: true,
      required: false,
      oasName: r'number_prop',
      oasType: r'number',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _numberPropGetter,
      setter: _numberPropSetter,
    ),
    booleanPropPart: PropertyReflection<NullableClass, UndefinedWrapper<
            bool
?>>(
      dartName: r'booleanProp',
      nullable: true,
      required: false,
      oasName: r'boolean_prop',
      oasType: r'boolean',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _booleanPropGetter,
      setter: _booleanPropSetter,
    ),
    stringPropPart: PropertyReflection<NullableClass, UndefinedWrapper<
            String
?>>(
      dartName: r'stringProp',
      nullable: true,
      required: false,
      oasName: r'string_prop',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _stringPropGetter,
      setter: _stringPropSetter,
    ),
    datePropPart: PropertyReflection<NullableClass, UndefinedWrapper<
            DateTime
?>>(
      dartName: r'dateProp',
      nullable: true,
      required: false,
      oasName: r'date_prop',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _datePropGetter,
      setter: _datePropSetter,
    ),
    datetimePropPart: PropertyReflection<NullableClass, UndefinedWrapper<
            DateTime
?>>(
      dartName: r'datetimeProp',
      nullable: true,
      required: false,
      oasName: r'datetime_prop',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _datetimePropGetter,
      setter: _datetimePropSetter,
    ),
    arrayNullablePropPart: PropertyReflection<NullableClass, UndefinedWrapper<
    List<
        
            $FreeFormObject
>
?>>(
      dartName: r'arrayNullableProp',
      nullable: true,
      required: false,
      oasName: r'array_nullable_prop',
      oasType: r'array',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      itemsReflection: ItemsReflection<NullableClass, 
            $FreeFormObject
>(parentReflectionGetter: instanceGetter,),
      getter: _arrayNullablePropGetter,
      setter: _arrayNullablePropSetter,
    ),
    arrayAndItemsNullablePropPart: PropertyReflection<NullableClass, UndefinedWrapper<
    List<
        
            $FreeFormObject
?>
?>>(
      dartName: r'arrayAndItemsNullableProp',
      nullable: true,
      required: false,
      oasName: r'array_and_items_nullable_prop',
      oasType: r'array',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      itemsReflection: ItemsReflection<NullableClass, 
            $FreeFormObject
?>(parentReflectionGetter: instanceGetter,),
      getter: _arrayAndItemsNullablePropGetter,
      setter: _arrayAndItemsNullablePropSetter,
    ),
    arrayItemsNullablePart: PropertyReflection<NullableClass, UndefinedWrapper<
    List<
        
            $FreeFormObject
?>
>>(
      dartName: r'arrayItemsNullable',
      nullable: false,
      required: false,
      oasName: r'array_items_nullable',
      oasType: r'array',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      itemsReflection: ItemsReflection<NullableClass, 
            $FreeFormObject
?>(parentReflectionGetter: instanceGetter,),
      getter: _arrayItemsNullableGetter,
      setter: _arrayItemsNullableSetter,
    ),
    objectNullablePropPart: PropertyReflection<NullableClass, UndefinedWrapper<
    Map<String, 
        
            $FreeFormObject
>
?>>(
      dartName: r'objectNullableProp',
      nullable: true,
      required: false,
      oasName: r'object_nullable_prop',
      oasType: r'object',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      itemsReflection: ItemsReflection<NullableClass, 
            $FreeFormObject
>(parentReflectionGetter: instanceGetter,),
      getter: _objectNullablePropGetter,
      setter: _objectNullablePropSetter,
    ),
    objectAndItemsNullablePropPart: PropertyReflection<NullableClass, UndefinedWrapper<
    Map<String, 
        
            $FreeFormObject
?>
?>>(
      dartName: r'objectAndItemsNullableProp',
      nullable: true,
      required: false,
      oasName: r'object_and_items_nullable_prop',
      oasType: r'object',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      itemsReflection: ItemsReflection<NullableClass, 
            $FreeFormObject
?>(parentReflectionGetter: instanceGetter,),
      getter: _objectAndItemsNullablePropGetter,
      setter: _objectAndItemsNullablePropSetter,
    ),
    objectItemsNullablePart: PropertyReflection<NullableClass, UndefinedWrapper<
    Map<String, 
        
            $FreeFormObject
?>
>>(
      dartName: r'objectItemsNullable',
      nullable: false,
      required: false,
      oasName: r'object_items_nullable',
      oasType: r'object',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      itemsReflection: ItemsReflection<NullableClass, 
            $FreeFormObject
?>(parentReflectionGetter: instanceGetter,),
      getter: _objectItemsNullableGetter,
      setter: _objectItemsNullableSetter,
    ),
    
    
    additionalPropertiesPart: AdditionalPropertiesReflection(
      parentReflectionGetter: instanceGetter,
      itemsReflection: ItemsReflection<NullableClass, 
            $FreeFormObject
?>(parentReflectionGetter: instanceGetter,),
          ),
  );
  const NullableClassReflection._({
    required this.modelName,
    required this.className,
    required this.integerPropPart,
    required this.numberPropPart,
    required this.booleanPropPart,
    required this.stringPropPart,
    required this.datePropPart,
    required this.datetimePropPart,
    required this.arrayNullablePropPart,
    required this.arrayAndItemsNullablePropPart,
    required this.arrayItemsNullablePart,
    required this.objectNullablePropPart,
    required this.objectAndItemsNullablePropPart,
    required this.objectItemsNullablePart,
    this.discriminatorKey,
    this.discriminatorMappings = const {},
    this.discriminatorImplicitMappings = const {},
        
    required this.additionalPropertiesPart,
  });

  final PropertyReflection<NullableClass, UndefinedWrapper<
            int
?>> integerPropPart;
  static UndefinedWrapper<
            int
?> _integerPropGetter(NullableClass parent) {
    return parent.integerProp;
  }
  static void _integerPropSetter(NullableClass parent, UndefinedWrapper<
            int
?> value) {
    parent.integerProp = value;
  }
  final PropertyReflection<NullableClass, UndefinedWrapper<
            num
?>> numberPropPart;
  static UndefinedWrapper<
            num
?> _numberPropGetter(NullableClass parent) {
    return parent.numberProp;
  }
  static void _numberPropSetter(NullableClass parent, UndefinedWrapper<
            num
?> value) {
    parent.numberProp = value;
  }
  final PropertyReflection<NullableClass, UndefinedWrapper<
            bool
?>> booleanPropPart;
  static UndefinedWrapper<
            bool
?> _booleanPropGetter(NullableClass parent) {
    return parent.booleanProp;
  }
  static void _booleanPropSetter(NullableClass parent, UndefinedWrapper<
            bool
?> value) {
    parent.booleanProp = value;
  }
  final PropertyReflection<NullableClass, UndefinedWrapper<
            String
?>> stringPropPart;
  static UndefinedWrapper<
            String
?> _stringPropGetter(NullableClass parent) {
    return parent.stringProp;
  }
  static void _stringPropSetter(NullableClass parent, UndefinedWrapper<
            String
?> value) {
    parent.stringProp = value;
  }
  final PropertyReflection<NullableClass, UndefinedWrapper<
            DateTime
?>> datePropPart;
  static UndefinedWrapper<
            DateTime
?> _datePropGetter(NullableClass parent) {
    return parent.dateProp;
  }
  static void _datePropSetter(NullableClass parent, UndefinedWrapper<
            DateTime
?> value) {
    parent.dateProp = value;
  }
  final PropertyReflection<NullableClass, UndefinedWrapper<
            DateTime
?>> datetimePropPart;
  static UndefinedWrapper<
            DateTime
?> _datetimePropGetter(NullableClass parent) {
    return parent.datetimeProp;
  }
  static void _datetimePropSetter(NullableClass parent, UndefinedWrapper<
            DateTime
?> value) {
    parent.datetimeProp = value;
  }
  final PropertyReflection<NullableClass, UndefinedWrapper<
    List<
        
            $FreeFormObject
>
?>> arrayNullablePropPart;
  static UndefinedWrapper<
    List<
        
            $FreeFormObject
>
?> _arrayNullablePropGetter(NullableClass parent) {
    return parent.arrayNullableProp;
  }
  static void _arrayNullablePropSetter(NullableClass parent, UndefinedWrapper<
    List<
        
            $FreeFormObject
>
?> value) {
    parent.arrayNullableProp = value;
  }
  final PropertyReflection<NullableClass, UndefinedWrapper<
    List<
        
            $FreeFormObject
?>
?>> arrayAndItemsNullablePropPart;
  static UndefinedWrapper<
    List<
        
            $FreeFormObject
?>
?> _arrayAndItemsNullablePropGetter(NullableClass parent) {
    return parent.arrayAndItemsNullableProp;
  }
  static void _arrayAndItemsNullablePropSetter(NullableClass parent, UndefinedWrapper<
    List<
        
            $FreeFormObject
?>
?> value) {
    parent.arrayAndItemsNullableProp = value;
  }
  final PropertyReflection<NullableClass, UndefinedWrapper<
    List<
        
            $FreeFormObject
?>
>> arrayItemsNullablePart;
  static UndefinedWrapper<
    List<
        
            $FreeFormObject
?>
> _arrayItemsNullableGetter(NullableClass parent) {
    return parent.arrayItemsNullable;
  }
  static void _arrayItemsNullableSetter(NullableClass parent, UndefinedWrapper<
    List<
        
            $FreeFormObject
?>
> value) {
    parent.arrayItemsNullable = value;
  }
  final PropertyReflection<NullableClass, UndefinedWrapper<
    Map<String, 
        
            $FreeFormObject
>
?>> objectNullablePropPart;
  static UndefinedWrapper<
    Map<String, 
        
            $FreeFormObject
>
?> _objectNullablePropGetter(NullableClass parent) {
    return parent.objectNullableProp;
  }
  static void _objectNullablePropSetter(NullableClass parent, UndefinedWrapper<
    Map<String, 
        
            $FreeFormObject
>
?> value) {
    parent.objectNullableProp = value;
  }
  final PropertyReflection<NullableClass, UndefinedWrapper<
    Map<String, 
        
            $FreeFormObject
?>
?>> objectAndItemsNullablePropPart;
  static UndefinedWrapper<
    Map<String, 
        
            $FreeFormObject
?>
?> _objectAndItemsNullablePropGetter(NullableClass parent) {
    return parent.objectAndItemsNullableProp;
  }
  static void _objectAndItemsNullablePropSetter(NullableClass parent, UndefinedWrapper<
    Map<String, 
        
            $FreeFormObject
?>
?> value) {
    parent.objectAndItemsNullableProp = value;
  }
  final PropertyReflection<NullableClass, UndefinedWrapper<
    Map<String, 
        
            $FreeFormObject
?>
>> objectItemsNullablePart;
  static UndefinedWrapper<
    Map<String, 
        
            $FreeFormObject
?>
> _objectItemsNullableGetter(NullableClass parent) {
    return parent.objectItemsNullable;
  }
  static void _objectItemsNullableSetter(NullableClass parent, UndefinedWrapper<
    Map<String, 
        
            $FreeFormObject
?>
> value) {
    parent.objectItemsNullable = value;
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
  List<PropertyReflection<NullableClass, dynamic>> get properties => [
    integerPropPart,
numberPropPart,
booleanPropPart,
stringPropPart,
datePropPart,
datetimePropPart,
arrayNullablePropPart,
arrayAndItemsNullablePropPart,
arrayItemsNullablePart,
objectNullablePropPart,
objectAndItemsNullablePropPart,
objectItemsNullablePart,
  ];

  final AdditionalPropertiesReflection<NullableClass, 
            $FreeFormObject
?> additionalPropertiesPart;

  
  
  @override
  List<PartReflection<NullableClass, dynamic>> get parts => [
    ...super.parts,
    additionalPropertiesPart,
  ];
  @override
  List<AllOfReflection<NullableClass, dynamic>> get allOfs => [
    
  ];


  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => NullableClass.canDeserialize(src);
  @override
  NullableClass Function(Object? src) get deserializeFunction =>
      (src) => NullableClass.deserialize(src);

  @override
  Object? Function(NullableClass src) get serializeFunction =>
      (src) => src.serialize();

  /// Gets an example of NullableClass.
  /// - [discriminators]: The set of aggregated discriminator properties in the target type, accessed by
  ///  calling [aggregatedDiscriminators].
  NullableClass example({Map<String, (ClassReflection, PropertyReflection)> discriminators = const {}}) {
    final _reflection = this;
    if (discriminators.isEmpty) discriminators = _reflection.aggregatedDiscriminators;
    return NullableClass(
      integerProp: () {
        PartReflection? _partReflection = _reflection.integerPropPart;
        
        return UndefinedWrapper(exampleNullable(() =>


            
            


    
    exampleint()


 ) );
      }(),
      numberProp: () {
        PartReflection? _partReflection = _reflection.numberPropPart;
        
        return UndefinedWrapper(exampleNullable(() =>


            
            


    
    examplenum()


 ) );
      }(),
      booleanProp: () {
        PartReflection? _partReflection = _reflection.booleanPropPart;
        
        return UndefinedWrapper(exampleNullable(() =>


            
            


    
    examplebool()


 ) );
      }(),
      stringProp: () {
        PartReflection? _partReflection = _reflection.stringPropPart;
        
        final disc = discriminators[r'string_prop'];
        if (disc != null) {
          final result = exampleDiscriminator(_partReflection, disc);
          if (result != null) {
            return UndefinedWrapper(result);
          }
        }
        
        return UndefinedWrapper(exampleNullable(() =>


            
            


    
    exampleString()


 ) );
      }(),
      dateProp: () {
        PartReflection? _partReflection = _reflection.datePropPart;
        
        return UndefinedWrapper(exampleNullable(() =>


            
            


    
    exampleDateTime()


 ) );
      }(),
      datetimeProp: () {
        PartReflection? _partReflection = _reflection.datetimePropPart;
        
        return UndefinedWrapper(exampleNullable(() =>


            
            


    
    exampleDateTime()


 ) );
      }(),
      arrayNullableProp: () {
        PartReflection? _partReflection = _reflection.arrayNullablePropPart;
        
        return UndefinedWrapper(exampleNullable(() =>


    exampleList(() { _partReflection = _partReflection?.itemsReflection; return 


            
            


    
    example$FreeFormObject()


; })



 ) );
      }(),
      arrayAndItemsNullableProp: () {
        PartReflection? _partReflection = _reflection.arrayAndItemsNullablePropPart;
        
        return UndefinedWrapper(exampleNullable(() =>


    exampleList(() { _partReflection = _partReflection?.itemsReflection; return exampleNullable(() =>


            
            


    
    example$FreeFormObject()


 ) ; })



 ) );
      }(),
      arrayItemsNullable: () {
        PartReflection? _partReflection = _reflection.arrayItemsNullablePart;
        
        return UndefinedWrapper(


    exampleList(() { _partReflection = _partReflection?.itemsReflection; return exampleNullable(() =>


            
            


    
    example$FreeFormObject()


 ) ; })



);
      }(),
      objectNullableProp: () {
        PartReflection? _partReflection = _reflection.objectNullablePropPart;
        
        return UndefinedWrapper(exampleNullable(() =>


    exampleMap(() { _partReflection = _partReflection?.itemsReflection; return 


            
            


    
    example$FreeFormObject()


; })



 ) );
      }(),
      objectAndItemsNullableProp: () {
        PartReflection? _partReflection = _reflection.objectAndItemsNullablePropPart;
        
        return UndefinedWrapper(exampleNullable(() =>


    exampleMap(() { _partReflection = _partReflection?.itemsReflection; return exampleNullable(() =>


            
            


    
    example$FreeFormObject()


 ) ; })



 ) );
      }(),
      objectItemsNullable: () {
        PartReflection? _partReflection = _reflection.objectItemsNullablePart;
        
        return UndefinedWrapper(


    exampleMap(() { _partReflection = _partReflection?.itemsReflection; return exampleNullable(() =>


            
            


    
    example$FreeFormObject()


 ) ; })



);
      }(),
      additionalProperties: () { PartReflection? _partReflection = _reflection.additionalPropertiesPart; return AdditionalProperties(exampleMap(() => exampleNullable(() =>


            
            


    
    example$FreeFormObject()


 ) )); }(),
      
    );
  }
}

class NullableClassXmlReflection {
    const NullableClassXmlReflection();
}

