import 'package:petstore_api/_internal.dart';

/// A marker mixin to be the base class for all openapi schemas of type `object` or schemas containing `oneof`, `anyof`.
///
/// Where an `object` is a value that can be serialized/deserialized from a json map.
///
/// Every openapi object MUST implement `$classReflection`, and optionally implement validate.
mixin $OpenApiObjectMixin {
  @mustCallSuper
  bool validate() => true;

  ModelReflection<Object> get $classReflection;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        ($classReflection.isValidKey(other) &&
            $classReflection.equals(this, other));
  }

  @override
  int get hashCode => $classReflection.hash(this);
}