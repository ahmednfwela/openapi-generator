// Model reflection

part of 'pets_multicontent_test_post_request.dart';


//class reflection

class PetsMulticontentTestPostRequestReflection extends ClassReflection<PetsMulticontentTestPostRequest> {
  static const instance = PetsMulticontentTestPostRequestReflection._(
    id: PropertyReflection(
      dartName: r'id',
      nullable: false,
      required: false,
      oasName: r'id',
      oasType: r'string',
      pattern: null,
    ),
    address: PropertyReflection(
      dartName: r'address',
      nullable: false,
      required: false,
      oasName: r'address',
      oasType: r'PetsMulticontentTestPostRequestAddress',
      pattern: null,
    ),
    profileImage: PropertyReflection(
      dartName: r'profileImage',
      nullable: false,
      required: false,
      oasName: r'profileImage',
      oasType: r'string',
      pattern: null,
    ),
  );
  const PetsMulticontentTestPostRequestReflection._({
    required this.id,
  
    required this.address,
  
    required this.profileImage,
  });

  final PropertyReflection<UndefinedWrapper<
            String
>> id;
  final PropertyReflection<UndefinedWrapper<
            PetsMulticontentTestPostRequestAddress
>> address;
  final PropertyReflection<UndefinedWrapper<
            XFile
>> profileImage;

  @override
  List<PropertyReflection> get members => [
    id,
address,
profileImage,
  ];

  @override
  bool Function(Object? src) get canDeserializeFunction =>
    (src) => PetsMulticontentTestPostRequest.canDeserialize(src);
  @override
  PetsMulticontentTestPostRequest Function(Object? src) get deserializeFunction =>
      (src) => PetsMulticontentTestPostRequest.deserialize(src);

  @override
  Object? Function(PetsMulticontentTestPostRequest src) get serializeFunction =>
      (src) => src.serialize();
}

class PetsMulticontentTestPostRequestXmlReflection {
    const PetsMulticontentTestPostRequestXmlReflection();
}

