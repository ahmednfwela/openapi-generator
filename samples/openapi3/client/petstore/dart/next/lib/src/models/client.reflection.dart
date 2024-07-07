// Model reflection

part of 'client.dart';


//class reflection

class ClientReflection extends ClassReflection<Client> {
  static ClientReflection instanceGetter() => instance;
  static const instance = ClientReflection._(
    modelName: r'Client',
    className: r'Client',
    clientPart: PropertyReflection<Client, UndefinedWrapper<
            String
>>(
      dartName: r'client',
      nullable: false,
      required: false,
      oasName: r'client',
      oasType: r'string',
      pattern: null,
      parentReflectionGetter:  instanceGetter,
      isDiscriminator: false,
      getter: _clientGetter,
      setter: _clientSetter,
    ),
    
    
    additionalPropertiesPart: AdditionalPropertiesReflection(
      parentReflectionGetter: instanceGetter,
      itemsReflection: ItemsReflection<Client, Object
?>(parentReflectionGetter: instanceGetter,),
          ),
  );
  const ClientReflection._({
    required this.modelName,
    required this.className,
    required this.clientPart,
    this.discriminatorKey,
    this.discriminatorMappings = const {},
    this.discriminatorImplicitMappings = const {},
        
    required this.additionalPropertiesPart,
  });

  final PropertyReflection<Client, UndefinedWrapper<
            String
>> clientPart;
  static UndefinedWrapper<
            String
> _clientGetter(Client parent) {
    return parent.client;
  }
  static void _clientSetter(Client parent, UndefinedWrapper<
            String
> value) {
    parent.client = value;
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
  List<PropertyReflection<Client, dynamic>> get properties => [
    clientPart,
  ];

  final AdditionalPropertiesReflection<Client, Object
?> additionalPropertiesPart;

  
  
  @override
  List<PartReflection<Client, dynamic>> get parts => [
    ...super.parts,
    additionalPropertiesPart,
  ];
  @override
  List<AllOfReflection<Client, dynamic>> get allOfs => [
    
  ];


  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => Client.canDeserialize(src);
  @override
  Client Function(Object? src) get deserializeFunction =>
      (src) => Client.deserialize(src);

  @override
  Object? Function(Client src) get serializeFunction =>
      (src) => src.serialize();

  /// Gets an example of Client.
  /// - [discriminators]: The set of aggregated discriminator properties in the target type, accessed by
  ///  calling [aggregatedDiscriminators].
  Client example({Map<String, (ClassReflection, PropertyReflection)> discriminators = const {}}) {
    final _reflection = this;
    if (discriminators.isEmpty) discriminators = _reflection.aggregatedDiscriminators;
    return Client(
      client: () {
        PartReflection? _partReflection = _reflection.clientPart;
        
        final disc = discriminators[r'client'];
        if (disc != null) {
          final result = exampleDiscriminator(_partReflection, disc);
          if (result != null) {
            return UndefinedWrapper(result);
          }
        }
        
        return UndefinedWrapper(


            
            


    
    exampleString()


);
      }(),
      additionalProperties: () { PartReflection? _partReflection = _reflection.additionalPropertiesPart; return AdditionalProperties(exampleMap(() => exampleNullable(() =>

exampleObject()



 ) )); }(),
      
    );
  }
}

class ClientXmlReflection {
    const ClientXmlReflection();
}

