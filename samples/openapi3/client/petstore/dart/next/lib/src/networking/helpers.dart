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
