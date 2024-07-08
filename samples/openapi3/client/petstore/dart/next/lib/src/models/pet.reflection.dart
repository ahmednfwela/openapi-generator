// Model reflection

part of 'pet.dart';


//class reflection

class PetReflection extends ClassReflection<Pet> {
  static PetReflection instanceGetter() => instance;
  static const instance = PetReflection._(
    modelName: r'Pet',
    className: r'Pet',
    idPart: PropertyReflection<Pet, UndefinedWrapper<
            int

>>(
      dartName: r'id',
      nullable: false,
      required: false,
      oasName: r'id',
      oasType: r'integer',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _idGetter,
      setter: _idSetter,
    ),
    categoryPart: PropertyReflection<Pet, UndefinedWrapper<
            Category

>>(
      dartName: r'category',
      nullable: false,
      required: false,
      oasName: r'category',
      oasType: r'Category',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      classReflection: CategoryReflection.instance,
      getter: _categoryGetter,
      setter: _categorySetter,
    ),
    namePart: PropertyReflection<Pet, 
            String

>(
      dartName: r'name',
      nullable: false,
      required: true,
      oasName: r'name',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _nameGetter,
      setter: _nameSetter,
    ),
    photoUrlsPart: PropertyReflection<Pet, 
    List<
        
            String

>

>(
      dartName: r'photoUrls',
      nullable: false,
      required: true,
      oasName: r'photoUrls',
      oasType: r'array',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      itemsReflection: ItemsReflection<Pet, 
            String

>(parentReflectionGetter: instanceGetter,),
      getter: _photoUrlsGetter,
      setter: _photoUrlsSetter,
    ),
    tagsPart: PropertyReflection<Pet, UndefinedWrapper<
    List<
        
            Tag

>

>>(
      dartName: r'tags',
      nullable: false,
      required: false,
      oasName: r'tags',
      oasType: r'array',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      itemsReflection: ItemsReflection<Pet, 
            Tag

>(parentReflectionGetter: instanceGetter,classReflection: TagReflection.instance,),
      getter: _tagsGetter,
      setter: _tagsSetter,
    ),
    statusPart: PropertyReflection<Pet, UndefinedWrapper<
            PetStatusEnum

>>(
      dartName: r'status',
      nullable: false,
      required: false,
      oasName: r'status',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _statusGetter,
      setter: _statusSetter,
    ),
    
    
    additionalPropertiesPart: AdditionalPropertiesReflection(
      parentReflectionGetter: instanceGetter,
      itemsReflection: ItemsReflection<Pet, Object

?>(parentReflectionGetter: instanceGetter,),
          ),
  );
  const PetReflection._({
    required this.modelName,
    required this.className,
    required this.idPart,
    required this.categoryPart,
    required this.namePart,
    required this.photoUrlsPart,
    required this.tagsPart,
    required this.statusPart,
    this.discriminatorKey,
    this.discriminatorMappings = const {},
    this.discriminatorImplicitMappings = const {},
        
    required this.additionalPropertiesPart,
  });

  final PropertyReflection<Pet, UndefinedWrapper<
            int

>> idPart;
  static UndefinedWrapper<
            int

> _idGetter(Pet parent) {
    return parent.id;
  }
  static void _idSetter(Pet parent, UndefinedWrapper<
            int

> value) {
    parent.id = value;
  }
  final PropertyReflection<Pet, UndefinedWrapper<
            Category

>> categoryPart;
  static UndefinedWrapper<
            Category

> _categoryGetter(Pet parent) {
    return parent.category;
  }
  static void _categorySetter(Pet parent, UndefinedWrapper<
            Category

> value) {
    parent.category = value;
  }
  final PropertyReflection<Pet, 
            String

> namePart;
  static 
            String

 _nameGetter(Pet parent) {
    return parent.name;
  }
  static void _nameSetter(Pet parent, 
            String

 value) {
    parent.name = value;
  }
  final PropertyReflection<Pet, 
    List<
        
            String

>

> photoUrlsPart;
  static 
    List<
        
            String

>

 _photoUrlsGetter(Pet parent) {
    return parent.photoUrls;
  }
  static void _photoUrlsSetter(Pet parent, 
    List<
        
            String

>

 value) {
    parent.photoUrls = value;
  }
  final PropertyReflection<Pet, UndefinedWrapper<
    List<
        
            Tag

>

>> tagsPart;
  static UndefinedWrapper<
    List<
        
            Tag

>

> _tagsGetter(Pet parent) {
    return parent.tags;
  }
  static void _tagsSetter(Pet parent, UndefinedWrapper<
    List<
        
            Tag

>

> value) {
    parent.tags = value;
  }
  final PropertyReflection<Pet, UndefinedWrapper<
            PetStatusEnum

>> statusPart;
  static UndefinedWrapper<
            PetStatusEnum

> _statusGetter(Pet parent) {
    return parent.status;
  }
  static void _statusSetter(Pet parent, UndefinedWrapper<
            PetStatusEnum

> value) {
    parent.status = value;
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
  List<PropertyReflection<Pet, dynamic>> get properties => [
    idPart,
categoryPart,
namePart,
photoUrlsPart,
tagsPart,
statusPart,
  ];

  final AdditionalPropertiesReflection<Pet, Object

?> additionalPropertiesPart;

  
  
  @override
  List<PartReflection<Pet, dynamic>> get parts => [
    ...super.parts,
    additionalPropertiesPart,
  ];
  @override
  List<AllOfReflection<Pet, dynamic>> get allOfs => [
    
  ];


  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => Pet.canDeserialize(src);
  @override
  Pet Function(Object? src) get deserializeFunction =>
      (src) => Pet.deserialize(src);

  @override
  Object? Function(Pet src) get serializeFunction =>
      (src) => src.serialize();

  /// Gets an example of Pet.
  /// - [discriminators]: The set of aggregated discriminator properties in the target type, accessed by
  ///  calling [aggregatedDiscriminators].
  Pet example({AggregatedDiscriminatorsResult? discriminators, Map<DiscriminatorKey, MapEntry<DiscriminatorValue, ClassReflection>>
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

    final exampleResult = Pet(
      id: () {
        var result = 


            
            


    
    exampleint()


;
        return UndefinedWrapper(result);
      } (),
      category: () {
        var result = 


            
            


    CategoryReflection.instance.example()
    


;
        return UndefinedWrapper(result);
      } (),
      name: () {
        var result = 


            
            


    
    exampleString()


;
        final preSelectedResult = discriminatorExampleResults[namePart.oasName]?.key.key;
        if (preSelectedResult != null) {
          result = preSelectedResult;
        }
        return result;
      } (),
      photoUrls: () {
        var result = 


    exampleList(() { return 


            
            


    
    exampleString()


; })



;
        return result;
      } (),
      tags: () {
        var result = 


    exampleList(() { return 


            
            


    TagReflection.instance.example()
    


; })



;
        return UndefinedWrapper(result);
      } (),
      status: () {
        var result = 


            exampleEnum(PetStatusEnum.values)



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


class PetXmlReflection {
    const PetXmlReflection();
}

