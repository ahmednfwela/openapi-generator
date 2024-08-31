import 'package:collection/collection.dart';
import 'package:petstore_api/_internal.dart';

enum PatternMatchResult {
  exact,
  partial,
  fail,
}

extension PatternMatchResultHelper<T> on Iterable<(PatternMatchResult, T)> {
  T? pickPrioritized() {
    return this
        .where((a) => a.$1 != PatternMatchResult.fail)
        .sortedByCompare((x) => x.$1, Enum.compareByIndex)
        .firstOrNull
        ?.$2;
  }
}


class OASNetworkingUtils {
  /// Serializes dart primitives into a byte stream based on mime type.
  ///
  /// This is an opinionated best-effort function that will try to serialize
  /// common objects into common mime type formats.
  ///
  /// If the target mime type is a text-based mime type (e.g. application/json
  /// or application/xml), then the [src] object will be serialized to string
  /// and then encoded based on [targetMediaType]'s `charset` parameter.
  ///
  /// If the target mime type is NOT a text-based mime type, then the [src] object
  /// MUST be either a Stream<List<int>> or [Uint8List] or [XFile] and it will be
  /// sent as-is.
  static Stream<List<int>> serializeToWire(
    Object? src,
    MediaType targetMediaType, {
    WireSerializationOptions? options,
  }) async* {
    options ??= WireSerializationOptions();
    if (options.isTextBased(targetMediaType, options)) {
      final string =
          await serializeToString(src, targetMediaType, options: options);
      final encoding = getEncodingOrDefault(targetMediaType);
      yield encoding.encode(string);
    } else {
      if (src is Stream<List<int>>) {
        yield* src;
      } else if (src is Uint8List) {
        yield src;
      } else if (src is XFile) {
        yield* src.openRead();
      } else {
        throw UnsupportedError(
          'Object of type $src can not be serialized to mime type ($targetMediaType)',
        );
      }
    }
  }

  static Future<String> serializeToString(
    Object? src,
    MediaType targetMediaType, {
    WireSerializationOptions? options,
  }) async {
    options ??= WireSerializationOptions();
    if (options.isXml(targetMediaType)) {
      if (src is! XmlHasWriter) {
        throw ArgumentError.value(
          src,
          'src',
          'only XmlNode can be serialized to xml.',
        );
      }
      return src.toXmlString();
    } else if (options.isJson(targetMediaType)) {
      return jsonEncode(src, toEncodable: options.toEncodable);
    } else if (options.isFormUrlEncoded(targetMediaType)) {
      if (src is! Map<String, dynamic>) {
        throw ArgumentError.value(
          src,
          'src',
          'Only Map<String, dynamic> can be serializd '
              'to application/x-www-form-urlencoded',
        );
      }
      return formUrlEncoded(src, options.encodingRules ?? {});
    } else {
      // by default, call toString.
      return src?.toString() ?? '';
    }
  }

  /// Deserializes a byte stream to dart primitives based on mime type.
  ///
  /// if the deserialization is not possible, returns a Stream<Uint8List>.
  static Future<Object?> deserializeFromWire(
    Stream<Uint8List> src,
    MediaType targetMediaType, {
    WireSerializationOptions? options,
  }) async {
    options ??= WireSerializationOptions();
    if (options.isTextBased(targetMediaType, options)) {
      final encoding = getEncodingOrDefault(targetMediaType);
      final decoded = await encoding.decodeStream(src);
      return await deserializeFromString(decoded, targetMediaType);
    } else {
      return src;
    }
  }

  static Future<Object?> deserializeFromString(
    String src,
    MediaType targetMediaType, {
    WireSerializationOptions? options,
  }) async {
    //
    options ??= WireSerializationOptions();
    if (options.isXml(targetMediaType)) {
      return XmlDocumentFragment.parse(src);
    } else if (options.isJson(targetMediaType)) {
      return jsonDecode(src);
    } else if (options.isFormUrlEncoded(targetMediaType)) {
      return Uri(query: src).queryParametersAll;
    } else {
      // by default, return src as is.
      return src;
    }
  }

  static bool isMediaTypeSerializable(MediaType mediaType) {
    if (mediaType
        case MediaType(type: 'application', subtype: 'json') ||
            MediaType(type: 'application', subtype: 'xml') ||
            MediaType(type: 'text') ||
            MediaType(type: 'application', subtype: 'x-www-form-urlencoded')) {
      return true;
    }
    return false;
  }

  static String formUrlEncoded(Map<String, Object?> serialized,
      Map<String, PropertyEncodingRule> encodingRules) {
    var result = Uri();

    for (var e in serialized.entries) {
      final rule = encodingRules[e.key];
      final style = rule?.style ?? 'form';
      final explode = rule?.explode ?? (style == 'form');
      result = OpenApiParameterSerializationQuery.fromStyle(
        style,
        explode: explode,
        parameterName: e.key,
        allowEmptyValue: false,
      ).expandUri(result, e.value);
    }
    var resultString = result.query.toString();
    if (resultString.startsWith('?')) {
      resultString = resultString.substring(1);
    }
    return resultString;
  }

  static Encoding getEncodingOrDefault(MediaType contentType) {
    final charset = contentType.parameters['charset'] ?? 'utf-8';
    return Encoding.getByName(charset) ?? utf8;
  }

  static PatternMatchResult matchesStatusCodePattern(
    int statusCode,
    String pattern,
  ) {
    // Normalize the pattern
    pattern = pattern.toUpperCase();
    if (pattern == 'DEFAULT') {
      return PatternMatchResult.partial;
    }
    final parsedPattern = int.tryParse(pattern);
    if (parsedPattern != null) {
      return parsedPattern == statusCode
          ? PatternMatchResult.exact
          : PatternMatchResult.fail;
    }
    final removePlaceHolders = pattern.replaceAll('X', '');
    return statusCode.toString().startsWith(removePlaceHolders)
        ? PatternMatchResult.partial
        : PatternMatchResult.fail;
  }

  static PatternMatchResult matchesContentTypePattern(
    MediaType contentType,
    MediaType pattern,
  ) {
    switch (pattern) {
      case MediaType(type: '*', subtype: '*'):
        return PatternMatchResult.partial;
      case MediaType(type: final type, subtype: '*'):
        if (type == contentType.type) {
          return PatternMatchResult.partial;
        }
      case MediaType(type: '*', subtype: final subtype):
        if (subtype == contentType.subtype) {
          return PatternMatchResult.partial;
        }
      case MediaType(type: final type, subtype: final subtype):
        if (contentType.type == type && contentType.subtype == subtype) {
          return PatternMatchResult.exact;
        }
    }
    return PatternMatchResult.fail;
  }
}
