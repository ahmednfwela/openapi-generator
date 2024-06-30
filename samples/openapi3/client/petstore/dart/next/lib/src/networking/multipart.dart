import 'package:openapi/_internal.dart';

typedef UnknownMediaTypeHandler = Stream<List<int>> Function(MediaType mediaType, Object? serialized, Encoding encoding, Map<String, PropertyEncodingRule> encodingRules);

typedef AppendFormDataPartHandler = Stream<HttpPacketMixin> Function(
  String fieldName,
  Object? value,
  MediaType? contentType,
  Map<String, String>? headers,
);
typedef AppendPartHandler = Stream<HttpPacketMixin> Function(
  Object? value,
  MediaType? contentType,
  Map<String, String>? headers,
);

Stream<HttpPacketMixin> defaultAppendFormDataPart(
  String fieldName,
  Object? value,
  MediaType? contentType,
  Map<String, String>? headers,
) async* {
  yield MultiPartFormDataFieldHttpPacket(
    field: fieldName,
    value: value.toString(),
    extraHeaders: headers,
  );
}
Stream<HttpPacketMixin> defaultAppendPart(
  Object? value,
  MediaType? contentType,
  Map<String, String>? headers,
) async* {
  yield HttpPacketMixin.memory(
    bodyBytes: utf8.encode(jsonEncode(value)),
    headers: {
      'Content-Type': 'application/json',
      ...?headers,
    },
  );
}

Stream<HttpPacketMixin> appendFormDataValue(
  String fieldName,
  Object? value,
  MediaType? contentType,
  Map<String, String>? headers, {
  AppendFormDataPartHandler unkownHandler = defaultAppendFormDataPart,
}) async* {
  switch (value) {
    case Uint8List():
      yield MultiPartFormDataFileHttpPacket(
        field: fieldName,
        bodyBytesStream: Stream.value(value),
        mimeType: contentType?.toString(),
        fileSize: value.lengthInBytes,
        extraHeaders: headers,
      );
    case XFile():
      yield MultiPartFormDataFileHttpPacket(
        field: fieldName,
        bodyBytesStream: value.openRead(),
        mimeType: contentType?.toString() ?? value.mimeType,
        fileSize: await value.length(),
        fileName: value.name,
        extraHeaders: headers,
      );

    case String():
    case num():
      yield MultiPartFormDataFieldHttpPacket(
        field: fieldName,
        value: value.toString(),
        extraHeaders: headers,
      );
    case Iterable():
      for (var child in value) {
        yield* appendFormDataValue(
          fieldName + '[]',
          child,
          contentType,
          headers,
          unkownHandler: unkownHandler,
        );
      }
    case Map<String, dynamic>():
      for (var entry in value.entries) {
        // We can either serialize the value as json, or flatten it as a form data.
        yield* appendFormDataValue(
          fieldName + '[' + entry.key + ']',
          entry.value,
          contentType,
          headers,
          unkownHandler: unkownHandler,
        );
      }
    // DateTime implementation is left to the user in the unkownHandler.
    case DateTime():
    default:
      yield* unkownHandler(
        fieldName,
        value,
        contentType,
        headers,
      );
  }
}

Stream<HttpPacketMixin> appendPartValue(
  Object? value,
  MediaType? contentType,
  Map<String, String>? headers, {
  AppendPartHandler unkownHandler = defaultAppendPart,
}) async* {
  switch (value) {
    case Uint8List():
      yield HttpPacketMixin.memory(
        bodyBytes: value,
        headers: {
          'Content-Type': contentType?.toString() ?? 'application/octet-stream',
          ...?headers
        },
      );
    case XFile():
      yield HttpPacketMixin.stream(
        bodyBytesStream: value.openRead(),
        headers: {
          'Content-Disposition': 'attachment; filename="${value.name}"',
          'Content-Type': contentType?.toString() ?? value.mimeType ?? 'application/octet-stream',
          ...?headers,
        },
        contentLength: await value.length(),
      );
    case String():
    case num():
      yield HttpPacketMixin.memory(
        bodyBytes: utf8.encode(value.toString()),
        headers: {
          'Content-Type': contentType?.toString() ?? 'text/plain',
          ...?headers
        },
      );
    case Iterable():
      for (var child in value) {
        yield* appendPartValue(
          child,
          contentType,
          headers,
          unkownHandler: unkownHandler,
        );
      }
    case Map<String, dynamic>():
      for (var entry in value.entries) {
        // We can either serialize the value as json, or flatten it as a form data.
        yield* appendPartValue(
          entry.value,
          contentType,
          headers,
          unkownHandler: unkownHandler,
        );
      }
    // DateTime implementation is left to the user in the unkownHandler.
    case DateTime():
    default:
      yield* unkownHandler(
        value,
        contentType,
        headers,
      );
  }
}
