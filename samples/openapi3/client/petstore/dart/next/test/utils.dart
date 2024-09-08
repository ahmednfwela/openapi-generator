import 'package:petstore_api/_internal.dart';
import 'package:test/test.dart';

HttpResponseBase createFakeResponse({
  required int statusCode,
  required Stream<List<int>> bodyBytesStream,
  Map<String, String> headers = const {},
  String? contentType,
  String? reasonPhrase,
}) {
  return HttpResponseBase.stream(
    originalRequest: HttpRequestBase.empty(url: Uri.https("example.com", "/api"), method: 'GET'),
    bodyBytesStream: bodyBytesStream,
    statusCode: statusCode,
    reasonPhrase: reasonPhrase,
    headers: CaseInsensitiveMap.from({
        if (contentType != null)
            'Content-Type': contentType,
        ...headers,
    }),
  );
}

Stream<List<int>> streamOfText(String value, {Encoding? encoding}) async* {
  yield (encoding ?? utf8).encode(value);
}

HttpResponseBase createFakeTextResponse({
  required int statusCode,
  required String value,
  Map<String, String> headers = const {},
  String? contentType,
  Encoding? encoding,
  String? reasonPhrase,
}) {
  var parsedContentType =
      contentType == null ? null : MediaType.parse(contentType);
  if (encoding != null) {
    parsedContentType = parsedContentType?.change(parameters: {
      ...parsedContentType.parameters,
      'charset': encoding.name,
    });
  }
  return createFakeResponse(
    statusCode: statusCode,
    headers: {
      'Content-Type': 'text/plain; charset=utf-8',
      if (parsedContentType != null)
        'Content-Type': parsedContentType.toString(),
      ...headers,
    },
    reasonPhrase: reasonPhrase,
    bodyBytesStream: streamOfText(value, encoding: encoding),
  );
}

_DeepMatcher<T> modelEquals<T extends $OpenApiObjectMixin>(
  T expected, {
  required ModelReflection<T> reflection,
}) {
  return _DeepMatcher(
    expected,
    reflection: reflection,
  );
}

class ModelEqualsMatcher<T extends $OpenApiObjectMixin> extends Matcher {
  const ModelEqualsMatcher(
    this.expected, {
    required this.reflection,
  });

  final T expected;
  final ModelReflection<T> reflection;
  @override
  Description describe(Description description) {
    return description.addDescriptionOf(expected).addDescriptionOf(reflection);
  }

  @override
  bool matches(Object? item, Map<Object?, Object?> matchState) {
    if (item is! T) {
      return false;
    }
    return true;
  }

  @override
  Description describeMismatch(
    Object? item,
    Description mismatchDescription,
    Map<Object?, Object?> matchState,
    bool verbose,
  ) {
    return super
        .describeMismatch(item, mismatchDescription, matchState, verbose);
  }
}

class _DeepMatcher<T extends $OpenApiObjectMixin> extends Matcher {
  final T _expected;
  final ModelReflection<T> reflection;

  _DeepMatcher(
    this._expected, {
    required this.reflection,
  });
  _Mismatch? _getMismatch({
    required Object? actual,
    required T expected,
    required ModelReflection<T> reflection,
  }) {
    if (actual == _expected) {
      return null;
    }
    if (actual is! T) {
      return _Mismatch.simple(
        '',
        actual,
        'expected $T',
        reflection: reflection,
      );
    }
    for (final prop in reflection.properties) {
      final actualValue = prop.getter(actual);
      final expectedValue = prop.getter(expected);
      final eq = prop.reflection.equality;
      if (!eq.equals(actualValue, expectedValue)) {
        return _Mismatch(
          'property[${prop.dartName}]',
          actualValue,
          (description, verbose) => description.addDescriptionOf(expectedValue),
          instead: true,
          reflection: reflection,
        );
      }
    }
    final additionalPropertiesPart = reflection.additionalPropertiesPart;
    if (additionalPropertiesPart != null) {
      final actualValue = additionalPropertiesPart.getter(actual);
      final expectedValue = additionalPropertiesPart.getter(expected);
      var err = (expectedValue.length == actualValue.length)
          ? ''
          : 'has different length and ';
      for (var key in expectedValue.keys) {
        if (!actualValue.containsKey(key)) {
          return _Mismatch(
            'additionalProperties',
            actual,
            (description, verbose) => description
                .add('${err}is missing map key ')
                .addDescriptionOf(key),
            reflection: reflection,
          );
        }
      }

      for (var key in actualValue.keys) {
        if (!expectedValue.containsKey(key)) {
          return _Mismatch(
            'additionalProperties',
            actual,
            (description, verbose) => description
                .add('${err}has extra map key ')
                .addDescriptionOf(key),
            reflection: reflection,
          );
        }
      }

      for (var key in expectedValue.keys) {
        final expectedPropValue = expectedValue[key];
        final actualPropValue = actualValue[key];

        if (!additionalPropertiesPart.itemReflection.equality
            .equals(expectedPropValue, actualPropValue)) {
          //
          return _Mismatch(
            "additionalProperties['$key']",
            actualPropValue,
            (description, verbose) =>
                description.addDescriptionOf(expectedPropValue),
            reflection: reflection,
          );
        }
      }
    }
    for (final (index, oneof) in reflection.oneOfs.indexed) {
      final expectedValue = oneof.getter(expected);
      final actualValue = oneof.getter(actual);
      if (!oneof.reflection.equality.equals(expectedValue, actualValue)) {
        return _Mismatch(
          'oneOf[$index]',
          actualValue,
          (description, verbose) => description.addDescriptionOf(expectedValue),
          reflection: reflection,
        );
      }
    }
    for (final (index, anyof) in reflection.anyOfs.indexed) {
      final expectedValue = anyof.getter(expected);
      final actualValue = anyof.getter(actual);
      if (!anyof.reflection.equality.equals(expectedValue, actualValue)) {
        return _Mismatch(
          'anyOf[$index]',
          actualValue,
          (description, verbose) => description.addDescriptionOf(expectedValue),
          reflection: reflection,
        );
      }
    }

    return _Mismatch(
      '',
      actual,
      (description, verbose) => description
          .add(
            '== resulted in false, but no reason was found to explain it',
          )
          .addDescriptionOf(expected),
      reflection: reflection,
    );
  }

  @override
  bool matches(Object? actual, Map<Object?, Object?> matchState) {
    if (actual is! T) {
      return false;
    }
    final mismatch = _getMismatch(
      actual: actual,
      expected: _expected,
      reflection: reflection,
    );
    if (mismatch == null) {
      return true;
    }
    addStateInfo(matchState, {'mismatch': mismatch});
    return false;
  }

  @override
  Description describe(Description description) =>
      description.addDescriptionOf(_expected);

  @override
  Description describeMismatch(Object? item, Description mismatchDescription,
      Map matchState, bool verbose) {
    var mismatch = matchState['mismatch'] as _Mismatch;
    var describeProblem = mismatch.describeProblem;
    if (mismatch.location.isNotEmpty) {
      mismatchDescription
          .add('at location ')
          .add(mismatch.location)
          .add(' is ')
          .addDescriptionOf(mismatch.actual);
      if (describeProblem != null) {
        mismatchDescription
            .add(' ${mismatch.instead ? 'instead of' : 'which'} ');
        describeProblem(mismatchDescription, verbose);
      }
    } else {
      // If we didn't get a good reason, that would normally be a
      // simple 'is <value>' message. We only add that if the mismatch
      // description is non empty (so we are supplementing the mismatch
      // description).
      if (describeProblem == null) {
        if (mismatchDescription.length > 0) {
          mismatchDescription.add('is ').addDescriptionOf(item);
        }
      } else {
        describeProblem(mismatchDescription, verbose);
      }
    }
    return mismatchDescription;
  }
}

class _Mismatch {
  /// A human-readable description of the location within the collection where
  /// the mismatch occurred.
  final String location;

  /// The actual value found at [location].
  final Object? actual;
  final SerializationReflection<Object?> reflection;

  /// Callback that can create a detailed description of the problem.
  final void Function(Description, bool verbose)? describeProblem;

  /// If `true`, [describeProblem] describes the expected value, so when the
  /// final mismatch description is pieced together, it will be preceded by
  /// `instead of` (e.g. `at location [2] is <3> instead of <4>`).  If `false`,
  /// [describeProblem] is a problem description from a sub-matcher, so when the
  /// final mismatch description is pieced together, it will be preceded by
  /// `which` (e.g. `at location [2] is <foo> which has length of 3`).
  final bool instead;

  _Mismatch(
    this.location,
    this.actual,
    this.describeProblem, {
    this.instead = false,
    required this.reflection,
  });

  _Mismatch.simple(
    this.location,
    this.actual,
    String problem, {
    required this.reflection,
  })  : describeProblem = ((description, verbose) => description.add(problem)),
        instead = false;
}
