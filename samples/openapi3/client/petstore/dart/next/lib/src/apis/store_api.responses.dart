// ignore_for_file: unnecessary_type_check

part of 'store_api.dart';


class StoreApiDeleteOrderResponse {
  StoreApiDeleteOrderResponse({
    required this.headers,
    required this.statusCode,
    required this.reasonPhrase,
    required this.context,
    this.bodyBytesStream,
  });

  final Map<String, String> headers;
  final int statusCode;
  final String? reasonPhrase;
  final Map<String, dynamic> context;
  /// This variable is only assigned if other response classes fail to read the response.
  /// Thus, handing the responsibility of reading the response to the user.
  final Stream<List<int>>? bodyBytesStream;

  T split<T>({
    required T Function(StoreApiDeleteOrderResponse400 response) on400,
    required T Function(StoreApiDeleteOrderResponse404 response) on404,
    required T Function(StoreApiDeleteOrderResponse response) other,
  }) {
    return switch (this) {
      StoreApiDeleteOrderResponse400 response => on400(response),
      StoreApiDeleteOrderResponse404 response => on404(response),
      _ => other(this),
    };
  }

  static Future<StoreApiDeleteOrderResponse> fromResponse(HttpResponseBase response, {required Map<String,dynamic> context}) async {
    if (OASNetworkingUtils.matchesStatsuCodePattern(response.statusCode, r'400')) {
      return StoreApiDeleteOrderResponse400.fromResponse(response, context: context);
    }
    if (OASNetworkingUtils.matchesStatsuCodePattern(response.statusCode, r'404')) {
      return StoreApiDeleteOrderResponse404.fromResponse(response, context: context);
    }
    return StoreApiDeleteOrderResponse(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}

class StoreApiDeleteOrderResponse400 extends StoreApiDeleteOrderResponse {
  StoreApiDeleteOrderResponse400({
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
  });



  static Future<StoreApiDeleteOrderResponse400> fromResponse(HttpResponseBase response, {required Map<String,dynamic> context}) async {
    return StoreApiDeleteOrderResponse400(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}



class StoreApiDeleteOrderResponse404 extends StoreApiDeleteOrderResponse {
  StoreApiDeleteOrderResponse404({
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
  });



  static Future<StoreApiDeleteOrderResponse404> fromResponse(HttpResponseBase response, {required Map<String,dynamic> context}) async {
    return StoreApiDeleteOrderResponse404(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}




class StoreApiGetInventoryResponse {
  StoreApiGetInventoryResponse({
    required this.headers,
    required this.statusCode,
    required this.reasonPhrase,
    required this.context,
    this.bodyBytesStream,
  });

  final Map<String, String> headers;
  final int statusCode;
  final String? reasonPhrase;
  final Map<String, dynamic> context;
  /// This variable is only assigned if other response classes fail to read the response.
  /// Thus, handing the responsibility of reading the response to the user.
  final Stream<List<int>>? bodyBytesStream;

  T split<T>({
    required T Function(StoreApiGetInventoryResponse200 response) on200,
    required T Function(StoreApiGetInventoryResponse response) other,
  }) {
    return switch (this) {
      StoreApiGetInventoryResponse200 response => on200(response),
      _ => other(this),
    };
  }

  static Future<StoreApiGetInventoryResponse> fromResponse(HttpResponseBase response, {required Map<String,dynamic> context}) async {
    if (OASNetworkingUtils.matchesStatsuCodePattern(response.statusCode, r'200')) {
      return StoreApiGetInventoryResponse200.fromResponse(response, context: context);
    }
    return StoreApiGetInventoryResponse(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}

class StoreApiGetInventoryResponse200 extends StoreApiGetInventoryResponse {
  StoreApiGetInventoryResponse200({
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
  });

  T split200<T>({
    
    required T Function(StoreApiGetInventoryResponse200ApplicationJson response) onApplicationJson,
    
    required T Function(StoreApiGetInventoryResponse200 response) other,
  }) {
    return switch (this) {
      
      StoreApiGetInventoryResponse200ApplicationJson response => onApplicationJson(response),
      
      _ => other(this),
    };
  }

  static Future<StoreApiGetInventoryResponse200> fromResponse(HttpResponseBase response, {required Map<String,dynamic> context}) async {
    final headers = response.headers;
    final contentTypeRaw = headers['Content-Type'];
    final contentTypeParsed = contentTypeRaw == null ? null : MediaType.parse(contentTypeRaw);
    if (contentTypeParsed != null) {
      if (OASNetworkingUtils.matchesContentTypePattern(contentTypeParsed, MediaType.parse(r'application/json'))) {
        return StoreApiGetInventoryResponse200ApplicationJson.fromResponse(response, contentType: contentTypeParsed, context: context);
      }
    }
    return StoreApiGetInventoryResponse200(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}



/// Represent the response when content-type is application/json.
class StoreApiGetInventoryResponse200ApplicationJson extends StoreApiGetInventoryResponse200 {
  final UndefinedWrapper<
    Map<String, 
        
            int
>
> body;

  /// The raw result of calling jsonDecode
  final Object? rawJson;

  StoreApiGetInventoryResponse200ApplicationJson({
     this.body = const UndefinedWrapper
        .undefined()
,
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
    this.rawJson,
  });

  static Future<StoreApiGetInventoryResponse200ApplicationJson> fromResponse(HttpResponseBase response, {required MediaType contentType, required Map<String,dynamic> context}) async {
    final charset = contentType.parameters['charset'] ?? 'utf-8';
    final encoding = Encoding.getByName(charset) ?? utf8;
    switch (contentType) {
      
      case MediaType(type: 'application', subtype: 'json'):
        final serialized = await encoding.decodeStream(response.bodyBytesStream);
        final v = jsonDecode(serialized);
        if (v == null ? false :
(

    
            v is Map<String, dynamic> && v.values.every((v) => v == null ? false :
(

    
            
            v is int
))
            
)) {
          final res = 
(

    
            v as Map<String, dynamic>
            
            

)
.map((k,v) => MapEntry(k, 
(

    
            
                    v as int
            

)


))

;
          return StoreApiGetInventoryResponse200ApplicationJson(
            headers: response.headers,
            statusCode: response.statusCode,
            reasonPhrase: response.reasonPhrase,
            context: context,
            body: UndefinedWrapper(res),
          );
        } else {
          // since we consumed the stream, we need to publish our read result.
          return StoreApiGetInventoryResponse200ApplicationJson(
            headers: response.headers,
            statusCode: response.statusCode,
            reasonPhrase: response.reasonPhrase,
            context: context,
            rawJson: v,
          );
        }
      
      
    }
    return StoreApiGetInventoryResponse200ApplicationJson(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}


class StoreApiGetOrderByIdResponse {
  StoreApiGetOrderByIdResponse({
    required this.headers,
    required this.statusCode,
    required this.reasonPhrase,
    required this.context,
    this.bodyBytesStream,
  });

  final Map<String, String> headers;
  final int statusCode;
  final String? reasonPhrase;
  final Map<String, dynamic> context;
  /// This variable is only assigned if other response classes fail to read the response.
  /// Thus, handing the responsibility of reading the response to the user.
  final Stream<List<int>>? bodyBytesStream;

  T split<T>({
    required T Function(StoreApiGetOrderByIdResponse200 response) on200,
    required T Function(StoreApiGetOrderByIdResponse400 response) on400,
    required T Function(StoreApiGetOrderByIdResponse404 response) on404,
    required T Function(StoreApiGetOrderByIdResponse response) other,
  }) {
    return switch (this) {
      StoreApiGetOrderByIdResponse200 response => on200(response),
      StoreApiGetOrderByIdResponse400 response => on400(response),
      StoreApiGetOrderByIdResponse404 response => on404(response),
      _ => other(this),
    };
  }

  static Future<StoreApiGetOrderByIdResponse> fromResponse(HttpResponseBase response, {required Map<String,dynamic> context}) async {
    if (OASNetworkingUtils.matchesStatsuCodePattern(response.statusCode, r'200')) {
      return StoreApiGetOrderByIdResponse200.fromResponse(response, context: context);
    }
    if (OASNetworkingUtils.matchesStatsuCodePattern(response.statusCode, r'400')) {
      return StoreApiGetOrderByIdResponse400.fromResponse(response, context: context);
    }
    if (OASNetworkingUtils.matchesStatsuCodePattern(response.statusCode, r'404')) {
      return StoreApiGetOrderByIdResponse404.fromResponse(response, context: context);
    }
    return StoreApiGetOrderByIdResponse(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}

class StoreApiGetOrderByIdResponse200 extends StoreApiGetOrderByIdResponse {
  StoreApiGetOrderByIdResponse200({
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
  });

  T split200<T>({
    
    required T Function(StoreApiGetOrderByIdResponse200ApplicationXml response) onApplicationXml,
    
    required T Function(StoreApiGetOrderByIdResponse200ApplicationJson response) onApplicationJson,
    
    required T Function(StoreApiGetOrderByIdResponse200 response) other,
  }) {
    return switch (this) {
      
      StoreApiGetOrderByIdResponse200ApplicationXml response => onApplicationXml(response),
      
      StoreApiGetOrderByIdResponse200ApplicationJson response => onApplicationJson(response),
      
      _ => other(this),
    };
  }

  static Future<StoreApiGetOrderByIdResponse200> fromResponse(HttpResponseBase response, {required Map<String,dynamic> context}) async {
    final headers = response.headers;
    final contentTypeRaw = headers['Content-Type'];
    final contentTypeParsed = contentTypeRaw == null ? null : MediaType.parse(contentTypeRaw);
    if (contentTypeParsed != null) {
      if (OASNetworkingUtils.matchesContentTypePattern(contentTypeParsed, MediaType.parse(r'application/xml'))) {
        return StoreApiGetOrderByIdResponse200ApplicationXml.fromResponse(response, contentType: contentTypeParsed, context: context);
      }
      if (OASNetworkingUtils.matchesContentTypePattern(contentTypeParsed, MediaType.parse(r'application/json'))) {
        return StoreApiGetOrderByIdResponse200ApplicationJson.fromResponse(response, contentType: contentTypeParsed, context: context);
      }
    }
    return StoreApiGetOrderByIdResponse200(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}



/// Represent the response when content-type is application/xml.
class StoreApiGetOrderByIdResponse200ApplicationXml extends StoreApiGetOrderByIdResponse200 {
  final UndefinedWrapper<
            Order
> body;

  /// The raw result of calling XmlDocument.parse
  final XmlDocument? rawXml;

  StoreApiGetOrderByIdResponse200ApplicationXml({
     this.body = const UndefinedWrapper
        .undefined()
,
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
    this.rawXml,
  });

  static Future<StoreApiGetOrderByIdResponse200ApplicationXml> fromResponse(HttpResponseBase response, {required MediaType contentType, required Map<String,dynamic> context}) async {
    final charset = contentType.parameters['charset'] ?? 'utf-8';
    final encoding = Encoding.getByName(charset) ?? utf8;
    switch (contentType) {
      
      
      case MediaType(type: 'application', subtype: 'xml'):
        final serialized = await encoding.decodeStream(response.bodyBytesStream);
        final v = XmlDocument.parse(serialized);
        // check if v can be deserialized to xml
        return StoreApiGetOrderByIdResponse200ApplicationXml(
          headers: response.headers,
          statusCode: response.statusCode,
          reasonPhrase: response.reasonPhrase,
          context: context,
          rawXml: v,
        );
      
    }
    return StoreApiGetOrderByIdResponse200ApplicationXml(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}

/// Represent the response when content-type is application/json.
class StoreApiGetOrderByIdResponse200ApplicationJson extends StoreApiGetOrderByIdResponse200 {
  final UndefinedWrapper<
            Order
> body;

  /// The raw result of calling jsonDecode
  final Object? rawJson;

  StoreApiGetOrderByIdResponse200ApplicationJson({
     this.body = const UndefinedWrapper
        .undefined()
,
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
    this.rawJson,
  });

  static Future<StoreApiGetOrderByIdResponse200ApplicationJson> fromResponse(HttpResponseBase response, {required MediaType contentType, required Map<String,dynamic> context}) async {
    final charset = contentType.parameters['charset'] ?? 'utf-8';
    final encoding = Encoding.getByName(charset) ?? utf8;
    switch (contentType) {
      
      case MediaType(type: 'application', subtype: 'json'):
        final serialized = await encoding.decodeStream(response.bodyBytesStream);
        final v = jsonDecode(serialized);
        if (v == null ? false :
(

    
            Order.canDeserialize(v)
            
)) {
          final res = Order.deserialize
(

    
            v


)


;
          return StoreApiGetOrderByIdResponse200ApplicationJson(
            headers: response.headers,
            statusCode: response.statusCode,
            reasonPhrase: response.reasonPhrase,
            context: context,
            body: UndefinedWrapper(res),
          );
        } else {
          // since we consumed the stream, we need to publish our read result.
          return StoreApiGetOrderByIdResponse200ApplicationJson(
            headers: response.headers,
            statusCode: response.statusCode,
            reasonPhrase: response.reasonPhrase,
            context: context,
            rawJson: v,
          );
        }
      
      
    }
    return StoreApiGetOrderByIdResponse200ApplicationJson(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}

class StoreApiGetOrderByIdResponse400 extends StoreApiGetOrderByIdResponse {
  StoreApiGetOrderByIdResponse400({
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
  });



  static Future<StoreApiGetOrderByIdResponse400> fromResponse(HttpResponseBase response, {required Map<String,dynamic> context}) async {
    return StoreApiGetOrderByIdResponse400(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}



class StoreApiGetOrderByIdResponse404 extends StoreApiGetOrderByIdResponse {
  StoreApiGetOrderByIdResponse404({
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
  });



  static Future<StoreApiGetOrderByIdResponse404> fromResponse(HttpResponseBase response, {required Map<String,dynamic> context}) async {
    return StoreApiGetOrderByIdResponse404(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}




class StoreApiPlaceOrderResponse {
  StoreApiPlaceOrderResponse({
    required this.headers,
    required this.statusCode,
    required this.reasonPhrase,
    required this.context,
    this.bodyBytesStream,
  });

  final Map<String, String> headers;
  final int statusCode;
  final String? reasonPhrase;
  final Map<String, dynamic> context;
  /// This variable is only assigned if other response classes fail to read the response.
  /// Thus, handing the responsibility of reading the response to the user.
  final Stream<List<int>>? bodyBytesStream;

  T split<T>({
    required T Function(StoreApiPlaceOrderResponse200 response) on200,
    required T Function(StoreApiPlaceOrderResponse400 response) on400,
    required T Function(StoreApiPlaceOrderResponse response) other,
  }) {
    return switch (this) {
      StoreApiPlaceOrderResponse200 response => on200(response),
      StoreApiPlaceOrderResponse400 response => on400(response),
      _ => other(this),
    };
  }

  static Future<StoreApiPlaceOrderResponse> fromResponse(HttpResponseBase response, {required Map<String,dynamic> context}) async {
    if (OASNetworkingUtils.matchesStatsuCodePattern(response.statusCode, r'200')) {
      return StoreApiPlaceOrderResponse200.fromResponse(response, context: context);
    }
    if (OASNetworkingUtils.matchesStatsuCodePattern(response.statusCode, r'400')) {
      return StoreApiPlaceOrderResponse400.fromResponse(response, context: context);
    }
    return StoreApiPlaceOrderResponse(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}

class StoreApiPlaceOrderResponse200 extends StoreApiPlaceOrderResponse {
  StoreApiPlaceOrderResponse200({
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
  });

  T split200<T>({
    
    required T Function(StoreApiPlaceOrderResponse200ApplicationXml response) onApplicationXml,
    
    required T Function(StoreApiPlaceOrderResponse200ApplicationJson response) onApplicationJson,
    
    required T Function(StoreApiPlaceOrderResponse200 response) other,
  }) {
    return switch (this) {
      
      StoreApiPlaceOrderResponse200ApplicationXml response => onApplicationXml(response),
      
      StoreApiPlaceOrderResponse200ApplicationJson response => onApplicationJson(response),
      
      _ => other(this),
    };
  }

  static Future<StoreApiPlaceOrderResponse200> fromResponse(HttpResponseBase response, {required Map<String,dynamic> context}) async {
    final headers = response.headers;
    final contentTypeRaw = headers['Content-Type'];
    final contentTypeParsed = contentTypeRaw == null ? null : MediaType.parse(contentTypeRaw);
    if (contentTypeParsed != null) {
      if (OASNetworkingUtils.matchesContentTypePattern(contentTypeParsed, MediaType.parse(r'application/xml'))) {
        return StoreApiPlaceOrderResponse200ApplicationXml.fromResponse(response, contentType: contentTypeParsed, context: context);
      }
      if (OASNetworkingUtils.matchesContentTypePattern(contentTypeParsed, MediaType.parse(r'application/json'))) {
        return StoreApiPlaceOrderResponse200ApplicationJson.fromResponse(response, contentType: contentTypeParsed, context: context);
      }
    }
    return StoreApiPlaceOrderResponse200(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}



/// Represent the response when content-type is application/xml.
class StoreApiPlaceOrderResponse200ApplicationXml extends StoreApiPlaceOrderResponse200 {
  final UndefinedWrapper<
            Order
> body;

  /// The raw result of calling XmlDocument.parse
  final XmlDocument? rawXml;

  StoreApiPlaceOrderResponse200ApplicationXml({
     this.body = const UndefinedWrapper
        .undefined()
,
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
    this.rawXml,
  });

  static Future<StoreApiPlaceOrderResponse200ApplicationXml> fromResponse(HttpResponseBase response, {required MediaType contentType, required Map<String,dynamic> context}) async {
    final charset = contentType.parameters['charset'] ?? 'utf-8';
    final encoding = Encoding.getByName(charset) ?? utf8;
    switch (contentType) {
      
      
      case MediaType(type: 'application', subtype: 'xml'):
        final serialized = await encoding.decodeStream(response.bodyBytesStream);
        final v = XmlDocument.parse(serialized);
        // check if v can be deserialized to xml
        return StoreApiPlaceOrderResponse200ApplicationXml(
          headers: response.headers,
          statusCode: response.statusCode,
          reasonPhrase: response.reasonPhrase,
          context: context,
          rawXml: v,
        );
      
    }
    return StoreApiPlaceOrderResponse200ApplicationXml(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}

/// Represent the response when content-type is application/json.
class StoreApiPlaceOrderResponse200ApplicationJson extends StoreApiPlaceOrderResponse200 {
  final UndefinedWrapper<
            Order
> body;

  /// The raw result of calling jsonDecode
  final Object? rawJson;

  StoreApiPlaceOrderResponse200ApplicationJson({
     this.body = const UndefinedWrapper
        .undefined()
,
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
    this.rawJson,
  });

  static Future<StoreApiPlaceOrderResponse200ApplicationJson> fromResponse(HttpResponseBase response, {required MediaType contentType, required Map<String,dynamic> context}) async {
    final charset = contentType.parameters['charset'] ?? 'utf-8';
    final encoding = Encoding.getByName(charset) ?? utf8;
    switch (contentType) {
      
      case MediaType(type: 'application', subtype: 'json'):
        final serialized = await encoding.decodeStream(response.bodyBytesStream);
        final v = jsonDecode(serialized);
        if (v == null ? false :
(

    
            Order.canDeserialize(v)
            
)) {
          final res = Order.deserialize
(

    
            v


)


;
          return StoreApiPlaceOrderResponse200ApplicationJson(
            headers: response.headers,
            statusCode: response.statusCode,
            reasonPhrase: response.reasonPhrase,
            context: context,
            body: UndefinedWrapper(res),
          );
        } else {
          // since we consumed the stream, we need to publish our read result.
          return StoreApiPlaceOrderResponse200ApplicationJson(
            headers: response.headers,
            statusCode: response.statusCode,
            reasonPhrase: response.reasonPhrase,
            context: context,
            rawJson: v,
          );
        }
      
      
    }
    return StoreApiPlaceOrderResponse200ApplicationJson(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}

class StoreApiPlaceOrderResponse400 extends StoreApiPlaceOrderResponse {
  StoreApiPlaceOrderResponse400({
    required super.headers,
    required super.statusCode,
    required super.reasonPhrase,
    required super.context,
    super.bodyBytesStream,
  });



  static Future<StoreApiPlaceOrderResponse400> fromResponse(HttpResponseBase response, {required Map<String,dynamic> context}) async {
    return StoreApiPlaceOrderResponse400(
      headers: response.headers,
      statusCode: response.statusCode,
      reasonPhrase: response.reasonPhrase,
      context: context,
      bodyBytesStream: response.bodyBytesStream,
    );
  }
}






