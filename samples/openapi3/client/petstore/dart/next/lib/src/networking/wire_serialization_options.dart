import 'package:petstore_api/_internal.dart';

/// Options to control serialization of dart objects to wire formats.
/// The main target of this class is figuring out what wire format and serialization context to use
/// for a given mime type.
class WireSerializationOptions {
  const WireSerializationOptions({
    this.isJson = defaultIsJson,
    this.isXml = defaultIsXml,
    this.isFormUrlEncoded = defaultIsFormUrlEncoded,
    this.isMultiPart = defaultIsMultiPart,
    this.isMultiPartFormData = defaultIsMultiPartFormData,
    this.isTextBased = defaultIsTextBased,
    this.toEncodable,
    this.encodingRules = const {},
    this.handleUnkownMediaType,
    this.appendUnkownPart = defaultAppendPart,
    this.appendUnkownFormDataPart = defaultAppendFormDataPart,
  });

  final Object? Function(Object? src)? toEncodable;
  final Map<String, PropertyEncodingRule> encodingRules;
  final bool Function(MediaType mediaType) isJson;
  final bool Function(MediaType mediaType) isXml;
  final bool Function(MediaType mediaType) isFormUrlEncoded;
  final bool Function(MediaType mediaType) isMultiPart;
  final bool Function(MediaType mediaType) isMultiPartFormData;
  final bool Function(MediaType mediaType, WireSerializationOptions options)
      isTextBased;

  /// Pass this to handle serialization and encoding of unkown media types yourself.
  final UnknownMediaTypeHandler? handleUnkownMediaType;

  /// Only useful in multipart requests.
  ///
  /// Pass this to handle serialization of unkown parts yourself.
  /// A value can result in one or more parts.
  /// returning an empty iterable will skip the part entirely.
  ///
  /// The default behavior is to call [defaultAppendPart] which will call `jsonEncode`
  /// to stringify the value.
  final AppendPartHandler appendUnkownPart;

  /// Only useful in multipart formdata requests.
  ///
  /// Pass this to handle serialization of unkown form data values yourself.
  /// A value can result in one or more parts.
  /// returning an empty iterable will skip the field entirely.
  ///
  /// The default behavior is to call [defaultAppendFormDataPart] which will call `.toString`
  /// to stringify the value.
  final AppendFormDataPartHandler appendUnkownFormDataPart;

  WireSerializationOptions withEncodingRules(Map<String, PropertyEncodingRule> rules) {
    return copyWith(encodingRules: rules);
  }

  WireSerializationOptions copyWith({
    Object? Function(Object? src)? toEncodable,
    Map<String, PropertyEncodingRule>? encodingRules,
    bool Function(MediaType mediaType)? isJson,
    bool Function(MediaType mediaType)? isXml,
    bool Function(MediaType mediaType)? isFormUrlEncoded,
    bool Function(MediaType mediaType)? isMultiPart,
    bool Function(MediaType mediaType)? isMultiPartFormData,
    bool Function(MediaType mediaType, WireSerializationOptions options)? isTextBased,
    AppendPartHandler? appendUnkownPart = defaultAppendPart,
    AppendFormDataPartHandler? appendUnkownFormDataPart,
  }) {
    return WireSerializationOptions(
      toEncodable: toEncodable ?? this.toEncodable,
      encodingRules: encodingRules ?? this.encodingRules,
      isJson: isJson ?? this.isJson,
      isXml: isXml ?? this.isXml,
      isFormUrlEncoded: isFormUrlEncoded ?? this.isFormUrlEncoded,
      isMultiPart: isMultiPart ?? this.isMultiPart,
      isMultiPartFormData: isMultiPartFormData ?? this.isMultiPartFormData,
      isTextBased: isTextBased ?? this.isTextBased,
      appendUnkownPart: appendUnkownPart ?? this.appendUnkownPart,
      appendUnkownFormDataPart: appendUnkownFormDataPart ?? this.appendUnkownFormDataPart,
    );
  }

  SerializationContext createSerializationContext(MediaType mediaType) {
    if (isXml(mediaType)) {
      return SerializationContext.xml();
    }
    // in non-json media types (e.g. multipart) don't throw when unknown values are encountered.
    return SerializationContext.json(serializeUnknownValue: isJson(mediaType) ? null : (value) => value);
  }

  /// True if the entire message can be represented textually.
  static bool defaultIsTextBased(
      MediaType mediaType, WireSerializationOptions options) {
    return mediaType.type == 'text' ||
        options.isJson(mediaType) ||
        options.isXml(mediaType) ||
        options.isFormUrlEncoded(mediaType);
  }

  static bool defaultIsJson(MediaType mediaType) {
    if (mediaType case MediaType(subtype: 'json')) {
      return true;
    }

    if (mediaType.subtype.endsWith('+json')) {
      return true;
    }
    return false;
  }

  static bool defaultIsXml(MediaType mediaType) {
    // covers text/xml and application/xml
    if (mediaType case MediaType(subtype: 'xml')) {
      return true;
    }
    if (mediaType.subtype.endsWith('+xml')) {
      return true;
    }
    return false;
  }

  static bool defaultIsFormUrlEncoded(MediaType mediaType) {
    if (mediaType
        case MediaType(type: 'application', subtype: 'x-www-form-urlencoded')) {
      return true;
    }
    return false;
  }

  static bool defaultIsMultiPart(MediaType mediaType) {
    return mediaType.type == 'multipart';
  }

  static bool defaultIsMultiPartFormData(MediaType mediaType) {
    return mediaType.type == 'multipart' && mediaType.subtype == 'form-data';
  }



  Stream<List<int>> getBodyFromSerialized({
    required Map<String, String> headers,
    required Object? serialized,
    required MediaType resolvedMediaType,
  }) async* {
    final encoding = OASNetworkingUtils.getEncodingOrDefault(resolvedMediaType);
    Stream<List<int>> _stringResult(String? src) {
      if (src == null) {
        return Stream.empty();
      }
      return Stream.value(encoding.encode(src));
    }

    if (isJson(resolvedMediaType)) {
      yield* _stringResult(json.encode(serialized, toEncodable: toEncodable));
    } else if (isXml(resolvedMediaType)) {
      if (serialized is XmlHasWriter) {
        yield* _stringResult(serialized.toXmlString());
      }
    } else if (isFormUrlEncoded(resolvedMediaType)) {
      if (serialized is! Map<String, dynamic>) {
        yield* _stringResult(serialized.toString());
        return;
      }
      yield* _stringResult(OASNetworkingUtils.formUrlEncoded(serialized, encodingRules));
    } else if (isMultiPart(resolvedMediaType)) {
      if (serialized is! Map<String, dynamic>) {
          throw ArgumentError('The serialized data must be a map in a multipart request.');
        }

        Stream<HttpPacketMixin> getParts() async* {
          if (isMultiPartFormData(resolvedMediaType)) {
            for (final e in serialized.entries) {
              final fieldName = e.key;
              final rule = encodingRules[e.key];
              final value = e.value;
              final contentType = rule?.contentType;
              final headers = rule?.headers;
              yield* appendFormDataValue(fieldName, value, contentType, headers, unkownHandler: appendUnkownFormDataPart);
            }
          } else {
            for (final e in serialized.entries) {
              final key = e.key;
              final value = e.value;
              final rule = encodingRules[key];
              final contentType = rule?.contentType;
              final headers = rule?.headers;
              //key is meaningless here
              yield* appendPartValue(value, contentType, headers, unkownHandler: appendUnkownPart);
            }
          }
        }
        final bodySerializer = MultiPartBodySerializer(
          boundary: resolvedMediaType.parameters['boundary'],
          parts: getParts(),
        );
        final result = await bodySerializer.serialize();
        yield* result.bodyBytesStream;
    } else {
      if (serialized is Stream<List<int>>) {
        yield* serialized;
        return;
      }
      if (serialized is Uint8List) {
        yield* Stream.value(serialized);
        return;
      }
      if (serialized is XFile) {
        yield* serialized.openRead();
        return;
      }
      final handleUnkownMediaType = this.handleUnkownMediaType;
      if (handleUnkownMediaType != null) {
        yield* handleUnkownMediaType(resolvedMediaType, serialized, encoding, encodingRules);
        return;
      }
      yield* _stringResult(serialized.toString());
    }
  }
}