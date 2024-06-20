/*
```js
{appVersion=1.0.0, generatorClass=org.openapitools.codegen.languages.DartNextClientCodegen, sortParamsByRequiredFlag=true, operationTagDescription=, httpBasicMethods=[CodegenSecurity{name='http_basic_test'description='null', type='http', scheme='basic', isBasic=true, isOAuth=false, isOpenIdConnect=false, isApiKey=false, isBasicBasic=true, isHttpSignature=false, isBasicBearer=false, bearerFormat='null', vendorExtensions={}, keyParamName='null', isKeyInQuery=false, isKeyInHeader=false, isKeyInCookie=false, flow='null', authorizationUrl='null', tokenUrl='null', refreshUrl='null', scopes=null, isCode=false, isPassword=false, isApplication=false, isImplicit=false, openIdConnectUrl=null}], classVarName=default, authMethods=[CodegenSecurity{name='petstore_auth'description='null', type='oauth2', scheme='null', isBasic=false, isOAuth=true, isOpenIdConnect=false, isApiKey=false, isBasicBasic=false, isHttpSignature=false, isBasicBearer=false, bearerFormat='null', vendorExtensions={}, keyParamName='null', isKeyInQuery=false, isKeyInHeader=false, isKeyInCookie=false, flow='implicit', authorizationUrl='http://petstore.swagger.io/api/oauth/dialog', tokenUrl='null', refreshUrl='null', scopes=[{scope=write:pets, description=modify pets in your account}, {scope=read:pets, description=read your pets}], isCode=false, isPassword=false, isApplication=false, isImplicit=true, openIdConnectUrl=null}, CodegenSecurity{name='api_key'description='null', type='apiKey', scheme='null', isBasic=false, isOAuth=false, isOpenIdConnect=false, isApiKey=true, isBasicBasic=false, isHttpSignature=false, isBasicBearer=false, bearerFormat='null', vendorExtensions={}, keyParamName='api_key', isKeyInQuery=false, isKeyInHeader=true, isKeyInCookie=false, flow='null', authorizationUrl='null', tokenUrl='null', refreshUrl='null', scopes=null, isCode=false, isPassword=false, isApplication=false, isImplicit=false, openIdConnectUrl=null}, CodegenSecurity{name='api_key_query'description='null', type='apiKey', scheme='null', isBasic=false, isOAuth=false, isOpenIdConnect=false, isApiKey=true, isBasicBasic=false, isHttpSignature=false, isBasicBearer=false, bearerFormat='null', vendorExtensions={}, keyParamName='api_key_query', isKeyInQuery=true, isKeyInHeader=false, isKeyInCookie=false, flow='null', authorizationUrl='null', tokenUrl='null', refreshUrl='null', scopes=null, isCode=false, isPassword=false, isApplication=false, isImplicit=false, openIdConnectUrl=null}, CodegenSecurity{name='http_basic_test'description='null', type='http', scheme='basic', isBasic=true, isOAuth=false, isOpenIdConnect=false, isApiKey=false, isBasicBasic=true, isHttpSignature=false, isBasicBearer=false, bearerFormat='null', vendorExtensions={}, keyParamName='null', isKeyInQuery=false, isKeyInHeader=false, isKeyInCookie=false, flow='null', authorizationUrl='null', tokenUrl='null', refreshUrl='null', scopes=null, isCode=false, isPassword=false, isApplication=false, isImplicit=false, openIdConnectUrl=null}, CodegenSecurity{name='bearer_test'description='null', type='http', scheme='bearer', isBasic=true, isOAuth=false, isOpenIdConnect=false, isApiKey=false, isBasicBasic=false, isHttpSignature=false, isBasicBearer=true, bearerFormat='JWT', vendorExtensions={}, keyParamName='null', isKeyInQuery=false, isKeyInHeader=false, isKeyInCookie=false, flow='null', authorizationUrl='null', tokenUrl='null', refreshUrl='null', scopes=null, isCode=false, isPassword=false, isApplication=false, isImplicit=false, openIdConnectUrl=null}], generateModelDocs=true, hasImport=true, generateModelTests=true, strictSpecBehavior=true, pubRepository=null, generateApiTests=true, classFilename=default_api, lambda={lowercase=org.openapitools.codegen.templating.mustache.LowercaseLambda@42c12b3e, uppercase=org.openapitools.codegen.templating.mustache.UppercaseLambda@2dbfa972, snakecase=org.openapitools.codegen.templating.mustache.SnakecaseLambda@46f73ffa, titlecase=org.openapitools.codegen.templating.mustache.TitlecaseLambda@41aebbb4, kebabcase=org.openapitools.codegen.templating.mustache.KebabCaseLambda@afde064, camelcase=org.openapitools.codegen.templating.mustache.CamelCaseAndSanitizeLambda@5a592c70, pascalcase=org.openapitools.codegen.templating.mustache.CamelCaseAndSanitizeLambda@252ec02e, uncamelize=org.openapitools.codegen.templating.mustache.UncamelizeLambda@11e9ac24, forwardslash=org.openapitools.codegen.templating.mustache.ForwardSlashLambda@74f280bd, backslash=org.openapitools.codegen.templating.mustache.BackSlashLambda@675b18ff, doublequote=org.openapitools.codegen.templating.mustache.DoubleQuoteLambda@34279b8a, indented=org.openapitools.codegen.templating.mustache.IndentedLambda@687389a6, indented_8=org.openapitools.codegen.templating.mustache.IndentedLambda@8641b7d, indented_12=org.openapitools.codegen.templating.mustache.IndentedLambda@37c7766e, indented_16=org.openapitools.codegen.templating.mustache.IndentedLambda@3fb450d7}, generateModels=true, hasOAuthMethods=true, inputSpec=modules/openapi-generator/src/test/resources/3_0/java/petstore-with-fake-endpoints-models-for-testing-okhttp-gson.yaml, baseName=Default, package=apis, imports=[{import=models.FakeAnyOfWIthSameErasureGet200Response, classname=FakeAnyOfWIthSameErasureGet200Response}, {import=models.FakeOneOfWIthSameErasureGet200Response, classname=FakeOneOfWIthSameErasureGet200Response}, {import=models.FooGetDefaultResponse, classname=FooGetDefaultResponse}], contextPath=/v2, appDescription=This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\, hasAuthMethods=true, version=1.0.0, releaseNote=Minor update, license=class License {
    name: Apache-2.0
    url: https://www.apache.org/licenses/LICENSE-2.0.html
    identifier: null
}, modelDocPath=doc/, pubDescription=OpenAPI API client, pubHomepage=homepage, hasHttpBearerMethods=true, generateWebhooks=true, importPath=apis.Default, licenseUrl=https://www.apache.org/licenses/LICENSE-2.0.html, pubName=openapi, pubLibrary=openapi.api, generatedYear=2024, modelPackage=models, sourceFolder=src, apiKeyMethods=[CodegenSecurity{name='api_key'description='null', type='apiKey', scheme='null', isBasic=false, isOAuth=false, isOpenIdConnect=false, isApiKey=true, isBasicBasic=false, isHttpSignature=false, isBasicBearer=false, bearerFormat='null', vendorExtensions={}, keyParamName='api_key', isKeyInQuery=false, isKeyInHeader=true, isKeyInCookie=false, flow='null', authorizationUrl='null', tokenUrl='null', refreshUrl='null', scopes=null, isCode=false, isPassword=false, isApplication=false, isImplicit=false, openIdConnectUrl=null}, CodegenSecurity{name='api_key_query'description='null', type='apiKey', scheme='null', isBasic=false, isOAuth=false, isOpenIdConnect=false, isApiKey=true, isBasicBasic=false, isHttpSignature=false, isBasicBearer=false, bearerFormat='null', vendorExtensions={}, keyParamName='api_key_query', isKeyInQuery=true, isKeyInHeader=false, isKeyInCookie=false, flow='null', authorizationUrl='null', tokenUrl='null', refreshUrl='null', scopes=null, isCode=false, isPassword=false, isApplication=false, isImplicit=false, openIdConnectUrl=null}], gitHost=github.com, templateDir=/home/ahmed/packages/openapi-generator/modules/openapi-generator/src/main/resources/dart-next, apiDocPath=doc/, licenseInfo=Apache-2.0, hasModel=true, generateApis=true, basePathWithoutHost=/v2, hasHttpBasicMethods=true, pubVersion=1.0.0, httpBearerMethods=[CodegenSecurity{name='bearer_test'description='null', type='http', scheme='bearer', isBasic=true, isOAuth=false, isOpenIdConnect=false, isApiKey=false, isBasicBasic=false, isHttpSignature=false, isBasicBearer=true, bearerFormat='JWT', vendorExtensions={}, keyParamName='null', isKeyInQuery=false, isKeyInHeader=false, isKeyInCookie=false, flow='null', authorizationUrl='null', tokenUrl='null', refreshUrl='null', scopes=null, isCode=false, isPassword=false, isApplication=false, isImplicit=false, openIdConnectUrl=null}], operations={classname=DefaultApi, operation=[CodegenOperation{responseHeaders=[], hasAuthMethods=false, hasConsumes=false, hasProduces=true, hasParams=false, hasOptionalParams=false, hasRequiredParams=false, returnTypeIsPrimitive=false, returnSimpleType=true, subresourceOperation=false, isMap=false, returnProperty=CodegenProperty{openApiType='FakeAnyOfWIthSameErasureGet200Response', baseName='response', complexType='FakeAnyOfWIthSameErasureGet200Response', getter='getResponse', setter='setResponse', description='null', dataType='FakeAnyOfWIthSameErasureGet200Response', datatypeWithEnum='FakeAnyOfWIthSameErasureGet200Response', dataFormat='null', name='response', min='null', max='null', defaultValue='null', defaultValueWithParam=' = data.response;', baseType='FakeAnyOfWIthSameErasureGet200Response', containerType='null', containerTypeMapped='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/_fake_anyOfWIthSameErasure_get_200_response"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isPassword=false, isFreeFormObject=false, isArray=false, isMap=false, isOptional=false, isEnum=false, isInnerEnum=false, isEnumRef=false, isAnyType=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, isNew=false, isOverridden=null, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='response', nameInPascalCase='Response', nameInSnakeCase='RESPONSE', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, isVoid=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, requiredVarsMap=null, ref=#/components/schemas/_fake_anyOfWIthSameErasure_get_200_response, schemaIsFromAdditionalProperties=false, isBooleanSchemaTrue=false, isBooleanSchemaFalse=false, format=null, dependentRequired=null, contains=null}, isArray=false, isMultipart=false, isVoid=false, isResponseBinary=false, isResponseFile=false, isResponseOptional=false, hasReference=false, hasDefaultResponse=false, hasErrorResponseObject=false, isRestfulIndex=false, isRestfulShow=false, isRestfulCreate=false, isRestfulUpdate=false, isRestfulDestroy=false, isRestful=false, isDeprecated=false, isCallbackRequest=false, uniqueItems='false, path='/fake/anyOfWIthSameErasure', operationId='fakeAnyOfWIthSameErasureGet', returnType='FakeAnyOfWIthSameErasureGet200Response', httpMethod='GET', returnBaseType='FakeAnyOfWIthSameErasureGet200Response', returnContainer='null', summary='null', unescapedNotes='Test route, this shouldn't cause a compiler error', notes='Test route, this shouldn't cause a compiler error', baseName='Default', defaultResponse='null', discriminator=null, consumes=null, produces=[{isJson=true, mediaType=application/json}], prioritizedContentTypes=null, servers=[], bodyParam=null, allParams=[], bodyParams=[], pathParams=[], queryParams=[], headerParams=[], formParams=[], cookieParams=[], requiredParams=[], optionalParams=[], requiredAndNotNullableParams=[], notNullableParams=[], authMethods=null, tags=[class Tag {
    name: default
    description: null
    externalDocs: null
}], responses=[CodegenResponse{headers=[], code='200', is1xx='false', is2xx='true', is3xx='false', is4xx='false', is5xx='false', message='successful response', examples=null, dataType='FakeAnyOfWIthSameErasureGet200Response', baseType='FakeAnyOfWIthSameErasureGet200Response', containerType='null', containerTypeMapped='null', hasHeaders=false, isString=false, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isEmail=false, isPassword=false, isModel=true, isFreeFormObject=false, isAnyType=false, isDefault=false, simpleType=false, primitiveType=false, isMap=false, isOptional=false, isArray=false, isBinary=false, isFile=false, schema=class Schema {
    type: null
    format: null
    $ref: #/components/schemas/_fake_anyOfWIthSameErasure_get_200_response
    description: null
    title: null
    multipleOf: null
    maximum: null
    exclusiveMaximum: null
    minimum: null
    exclusiveMinimum: null
    maxLength: null
    minLength: null
    pattern: null
    maxItems: null
    minItems: null
    uniqueItems: null
    maxProperties: null
    minProperties: null
    required: null
    not: null
    properties: null
    additionalProperties: null
    nullable: null
    readOnly: null
    writeOnly: null
    example: null
    externalDocs: null
    deprecated: null
    discriminator: null
    xml: null
}, jsonSchema='{
  "description" : "successful response",
  "content" : {
    "application/json" : {
      "schema" : {
        "$ref" : "#/components/schemas/_fake_anyOfWIthSameErasure_get_200_response"
      }
    }
  }
}', vendorExtensions={}, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, maxItems=null, minItems=null, maxLength=null, minLength=null, exclusiveMinimum=false, exclusiveMaximum=false, minimum='null', maximum='null', pattern='null', multipleOf='null', items='null', additionalProperties='null', vars='[]', requiredVars='[]', isNull='false, isVoid='false, hasValidation='false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, responseHeaders=[], content={application/json=CodegenMediaType{schema=CodegenProperty{openApiType='FakeAnyOfWIthSameErasureGet200Response', baseName='SchemaFor200ResponseBodyApplicationJson', complexType='FakeAnyOfWIthSameErasureGet200Response', getter='getSchemaFor200ResponseBodyApplicationJson', setter='setSchemaFor200ResponseBodyApplicationJson', description='null', dataType='FakeAnyOfWIthSameErasureGet200Response', datatypeWithEnum='FakeAnyOfWIthSameErasureGet200Response', dataFormat='null', name='schemaFor200ResponseBodyApplicationJson', min='null', max='null', defaultValue='null', defaultValueWithParam=' = data.SchemaFor200ResponseBodyApplicationJson;', baseType='FakeAnyOfWIthSameErasureGet200Response', containerType='null', containerTypeMapped='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/_fake_anyOfWIthSameErasure_get_200_response"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isPassword=false, isFreeFormObject=false, isArray=false, isMap=false, isOptional=false, isEnum=false, isInnerEnum=false, isEnumRef=false, isAnyType=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, isNew=false, isOverridden=null, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='schemaFor200ResponseBodyApplicationJson', nameInPascalCase='SchemaFor200ResponseBodyApplicationJson', nameInSnakeCase='SCHEMA_FOR200_RESPONSE_BODY_APPLICATION_JSON', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, isVoid=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, requiredVarsMap=null, ref=#/components/schemas/_fake_anyOfWIthSameErasure_get_200_response, schemaIsFromAdditionalProperties=false, isBooleanSchemaTrue=false, isBooleanSchemaFalse=false, format=null, dependentRequired=null, contains=null}, encoding=null, vendorExtensions={}}}, requiredVarsMap=null, ref=null, schemaIsFromAdditionalProperties=false}], callbacks=[], imports=[FakeAnyOfWIthSameErasureGet200Response], examples=[{generatedContentType=application/json, contentType=application/json, example=[ "_fake_anyOfWIthSameErasure_get_200_response", "_fake_anyOfWIthSameErasure_get_200_response" ], statusCode=200}], requestBodyExamples=null, externalDocs=null, vendorExtensions={}, nickname='fakeAnyOfWIthSameErasureGet', operationIdOriginal='null', operationIdLowerCase='fakeanyofwithsameerasureget', operationIdCamelCase='FakeAnyOfWIthSameErasureGet', operationIdSnakeCase='fake_any_of_w_ith_same_erasure_get', constantParams='[]'}, CodegenOperation{responseHeaders=[], hasAuthMethods=false, hasConsumes=false, hasProduces=true, hasParams=false, hasOptionalParams=false, hasRequiredParams=false, returnTypeIsPrimitive=false, returnSimpleType=true, subresourceOperation=false, isMap=false, returnProperty=CodegenProperty{openApiType='FakeOneOfWIthSameErasureGet200Response', baseName='response', complexType='FakeOneOfWIthSameErasureGet200Response', getter='getResponse', setter='setResponse', description='null', dataType='FakeOneOfWIthSameErasureGet200Response', datatypeWithEnum='FakeOneOfWIthSameErasureGet200Response', dataFormat='null', name='response', min='null', max='null', defaultValue='null', defaultValueWithParam=' = data.response;', baseType='FakeOneOfWIthSameErasureGet200Response', containerType='null', containerTypeMapped='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/_fake_oneOfWIthSameErasure_get_200_response"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isPassword=false, isFreeFormObject=false, isArray=false, isMap=false, isOptional=false, isEnum=false, isInnerEnum=false, isEnumRef=false, isAnyType=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, isNew=false, isOverridden=null, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='response', nameInPascalCase='Response', nameInSnakeCase='RESPONSE', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, isVoid=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, requiredVarsMap=null, ref=#/components/schemas/_fake_oneOfWIthSameErasure_get_200_response, schemaIsFromAdditionalProperties=false, isBooleanSchemaTrue=false, isBooleanSchemaFalse=false, format=null, dependentRequired=null, contains=null}, isArray=false, isMultipart=false, isVoid=false, isResponseBinary=false, isResponseFile=false, isResponseOptional=false, hasReference=false, hasDefaultResponse=false, hasErrorResponseObject=false, isRestfulIndex=false, isRestfulShow=false, isRestfulCreate=false, isRestfulUpdate=false, isRestfulDestroy=false, isRestful=false, isDeprecated=false, isCallbackRequest=false, uniqueItems='false, path='/fake/oneOfWIthSameErasure', operationId='fakeOneOfWIthSameErasureGet', returnType='FakeOneOfWIthSameErasureGet200Response', httpMethod='GET', returnBaseType='FakeOneOfWIthSameErasureGet200Response', returnContainer='null', summary='null', unescapedNotes='Test route, this shouldn't cause a compiler error', notes='Test route, this shouldn't cause a compiler error', baseName='Default', defaultResponse='null', discriminator=null, consumes=null, produces=[{isJson=true, mediaType=application/json}], prioritizedContentTypes=null, servers=[], bodyParam=null, allParams=[], bodyParams=[], pathParams=[], queryParams=[], headerParams=[], formParams=[], cookieParams=[], requiredParams=[], optionalParams=[], requiredAndNotNullableParams=[], notNullableParams=[], authMethods=null, tags=[class Tag {
    name: default
    description: null
    externalDocs: null
}], responses=[CodegenResponse{headers=[], code='200', is1xx='false', is2xx='true', is3xx='false', is4xx='false', is5xx='false', message='successful response', examples=null, dataType='FakeOneOfWIthSameErasureGet200Response', baseType='FakeOneOfWIthSameErasureGet200Response', containerType='null', containerTypeMapped='null', hasHeaders=false, isString=false, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isEmail=false, isPassword=false, isModel=true, isFreeFormObject=false, isAnyType=false, isDefault=false, simpleType=false, primitiveType=false, isMap=false, isOptional=false, isArray=false, isBinary=false, isFile=false, schema=class Schema {
    type: null
    format: null
    $ref: #/components/schemas/_fake_oneOfWIthSameErasure_get_200_response
    description: null
    title: null
    multipleOf: null
    maximum: null
    exclusiveMaximum: null
    minimum: null
    exclusiveMinimum: null
    maxLength: null
    minLength: null
    pattern: null
    maxItems: null
    minItems: null
    uniqueItems: null
    maxProperties: null
    minProperties: null
    required: null
    not: null
    properties: null
    additionalProperties: null
    nullable: null
    readOnly: null
    writeOnly: null
    example: null
    externalDocs: null
    deprecated: null
    discriminator: null
    xml: null
}, jsonSchema='{
  "description" : "successful response",
  "content" : {
    "application/json" : {
      "schema" : {
        "$ref" : "#/components/schemas/_fake_oneOfWIthSameErasure_get_200_response"
      }
    }
  }
}', vendorExtensions={}, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, maxItems=null, minItems=null, maxLength=null, minLength=null, exclusiveMinimum=false, exclusiveMaximum=false, minimum='null', maximum='null', pattern='null', multipleOf='null', items='null', additionalProperties='null', vars='[]', requiredVars='[]', isNull='false, isVoid='false, hasValidation='false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, responseHeaders=[], content={application/json=CodegenMediaType{schema=CodegenProperty{openApiType='FakeOneOfWIthSameErasureGet200Response', baseName='SchemaFor200ResponseBodyApplicationJson', complexType='FakeOneOfWIthSameErasureGet200Response', getter='getSchemaFor200ResponseBodyApplicationJson', setter='setSchemaFor200ResponseBodyApplicationJson', description='null', dataType='FakeOneOfWIthSameErasureGet200Response', datatypeWithEnum='FakeOneOfWIthSameErasureGet200Response', dataFormat='null', name='schemaFor200ResponseBodyApplicationJson', min='null', max='null', defaultValue='null', defaultValueWithParam=' = data.SchemaFor200ResponseBodyApplicationJson;', baseType='FakeOneOfWIthSameErasureGet200Response', containerType='null', containerTypeMapped='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/_fake_oneOfWIthSameErasure_get_200_response"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isPassword=false, isFreeFormObject=false, isArray=false, isMap=false, isOptional=false, isEnum=false, isInnerEnum=false, isEnumRef=false, isAnyType=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, isNew=false, isOverridden=null, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='schemaFor200ResponseBodyApplicationJson', nameInPascalCase='SchemaFor200ResponseBodyApplicationJson', nameInSnakeCase='SCHEMA_FOR200_RESPONSE_BODY_APPLICATION_JSON', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, isVoid=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, requiredVarsMap=null, ref=#/components/schemas/_fake_oneOfWIthSameErasure_get_200_response, schemaIsFromAdditionalProperties=false, isBooleanSchemaTrue=false, isBooleanSchemaFalse=false, format=null, dependentRequired=null, contains=null}, encoding=null, vendorExtensions={}}}, requiredVarsMap=null, ref=null, schemaIsFromAdditionalProperties=false}], callbacks=[], imports=[FakeOneOfWIthSameErasureGet200Response], examples=[{generatedContentType=application/json, contentType=application/json, example=[ "_fake_oneOfWIthSameErasure_get_200_response", "_fake_oneOfWIthSameErasure_get_200_response" ], statusCode=200}], requestBodyExamples=null, externalDocs=null, vendorExtensions={}, nickname='fakeOneOfWIthSameErasureGet', operationIdOriginal='null', operationIdLowerCase='fakeoneofwithsameerasureget', operationIdCamelCase='FakeOneOfWIthSameErasureGet', operationIdSnakeCase='fake_one_of_w_ith_same_erasure_get', constantParams='[]'}, CodegenOperation{responseHeaders=[], hasAuthMethods=false, hasConsumes=false, hasProduces=true, hasParams=false, hasOptionalParams=false, hasRequiredParams=false, returnTypeIsPrimitive=false, returnSimpleType=true, subresourceOperation=false, isMap=false, returnProperty=CodegenProperty{openApiType='FooGetDefaultResponse', baseName='response', complexType='FooGetDefaultResponse', getter='getResponse', setter='setResponse', description='null', dataType='FooGetDefaultResponse', datatypeWithEnum='FooGetDefaultResponse', dataFormat='null', name='response', min='null', max='null', defaultValue='null', defaultValueWithParam=' = data.response;', baseType='FooGetDefaultResponse', containerType='null', containerTypeMapped='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/_foo_get_default_response"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isPassword=false, isFreeFormObject=false, isArray=false, isMap=false, isOptional=false, isEnum=false, isInnerEnum=false, isEnumRef=false, isAnyType=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, isNew=false, isOverridden=null, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='response', nameInPascalCase='Response', nameInSnakeCase='RESPONSE', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, isVoid=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, requiredVarsMap=null, ref=#/components/schemas/_foo_get_default_response, schemaIsFromAdditionalProperties=false, isBooleanSchemaTrue=false, isBooleanSchemaFalse=false, format=null, dependentRequired=null, contains=null}, isArray=false, isMultipart=false, isVoid=false, isResponseBinary=false, isResponseFile=false, isResponseOptional=false, hasReference=false, hasDefaultResponse=false, hasErrorResponseObject=false, isRestfulIndex=false, isRestfulShow=false, isRestfulCreate=false, isRestfulUpdate=false, isRestfulDestroy=false, isRestful=false, isDeprecated=false, isCallbackRequest=false, uniqueItems='false, path='/foo', operationId='fooGet', returnType='FooGetDefaultResponse', httpMethod='GET', returnBaseType='FooGetDefaultResponse', returnContainer='null', summary='null', unescapedNotes='null', notes='null', baseName='Default', defaultResponse='null', discriminator=null, consumes=null, produces=[{isJson=true, mediaType=application/json}], prioritizedContentTypes=null, servers=[], bodyParam=null, allParams=[], bodyParams=[], pathParams=[], queryParams=[], headerParams=[], formParams=[], cookieParams=[], requiredParams=[], optionalParams=[], requiredAndNotNullableParams=[], notNullableParams=[], authMethods=null, tags=[class Tag {
    name: default
    description: null
    externalDocs: null
}], responses=[CodegenResponse{headers=[], code='0', is1xx='false', is2xx='false', is3xx='false', is4xx='false', is5xx='false', message='response', examples=null, dataType='FooGetDefaultResponse', baseType='FooGetDefaultResponse', containerType='null', containerTypeMapped='null', hasHeaders=false, isString=false, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isEmail=false, isPassword=false, isModel=true, isFreeFormObject=false, isAnyType=false, isDefault=true, simpleType=false, primitiveType=false, isMap=false, isOptional=false, isArray=false, isBinary=false, isFile=false, schema=class Schema {
    type: null
    format: null
    $ref: #/components/schemas/_foo_get_default_response
    description: null
    title: null
    multipleOf: null
    maximum: null
    exclusiveMaximum: null
    minimum: null
    exclusiveMinimum: null
    maxLength: null
    minLength: null
    pattern: null
    maxItems: null
    minItems: null
    uniqueItems: null
    maxProperties: null
    minProperties: null
    required: null
    not: null
    properties: null
    additionalProperties: null
    nullable: null
    readOnly: null
    writeOnly: null
    example: null
    externalDocs: null
    deprecated: null
    discriminator: null
    xml: null
}, jsonSchema='{
  "description" : "response",
  "content" : {
    "application/json" : {
      "schema" : {
        "$ref" : "#/components/schemas/_foo_get_default_response"
      }
    }
  }
}', vendorExtensions={}, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, maxItems=null, minItems=null, maxLength=null, minLength=null, exclusiveMinimum=false, exclusiveMaximum=false, minimum='null', maximum='null', pattern='null', multipleOf='null', items='null', additionalProperties='null', vars='[]', requiredVars='[]', isNull='false, isVoid='false, hasValidation='false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, responseHeaders=[], content={application/json=CodegenMediaType{schema=CodegenProperty{openApiType='FooGetDefaultResponse', baseName='SchemaFor0ResponseBodyApplicationJson', complexType='FooGetDefaultResponse', getter='getSchemaFor0ResponseBodyApplicationJson', setter='setSchemaFor0ResponseBodyApplicationJson', description='null', dataType='FooGetDefaultResponse', datatypeWithEnum='FooGetDefaultResponse', dataFormat='null', name='schemaFor0ResponseBodyApplicationJson', min='null', max='null', defaultValue='null', defaultValueWithParam=' = data.SchemaFor0ResponseBodyApplicationJson;', baseType='FooGetDefaultResponse', containerType='null', containerTypeMapped='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/_foo_get_default_response"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isPassword=false, isFreeFormObject=false, isArray=false, isMap=false, isOptional=false, isEnum=false, isInnerEnum=false, isEnumRef=false, isAnyType=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, isNew=false, isOverridden=null, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='schemaFor0ResponseBodyApplicationJson', nameInPascalCase='SchemaFor0ResponseBodyApplicationJson', nameInSnakeCase='SCHEMA_FOR0_RESPONSE_BODY_APPLICATION_JSON', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, isVoid=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, requiredVarsMap=null, ref=#/components/schemas/_foo_get_default_response, schemaIsFromAdditionalProperties=false, isBooleanSchemaTrue=false, isBooleanSchemaFalse=false, format=null, dependentRequired=null, contains=null}, encoding=null, vendorExtensions={}}}, requiredVarsMap=null, ref=null, schemaIsFromAdditionalProperties=false}], callbacks=[], imports=[FooGetDefaultResponse], examples=[{generatedContentType=application/json, contentType=application/json, example={
  "string" : {
    "bar" : "bar"
  }
}, statusCode=200}], requestBodyExamples=null, externalDocs=null, vendorExtensions={}, nickname='fooGet', operationIdOriginal='null', operationIdLowerCase='fooget', operationIdCamelCase='FooGet', operationIdSnakeCase='foo_get', constantParams='[]'}], pathPrefix=default}, hideGenerationTimestamp=true, unescapedAppDescription=This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: " \, hasApiKeyMethods=true, pubAuthor=Author, appName=OpenAPI Petstore, generateApiDocs=true, useEnumExtension=false, generatorVersion=7.7.0-SNAPSHOT, apiPackage=apis, pubAuthorEmail=author@homepage, oauthMethods=[CodegenSecurity{name='petstore_auth'description='null', type='oauth2', scheme='null', isBasic=false, isOAuth=true, isOpenIdConnect=false, isApiKey=false, isBasicBasic=false, isHttpSignature=false, isBasicBearer=false, bearerFormat='null', vendorExtensions={}, keyParamName='null', isKeyInQuery=false, isKeyInHeader=false, isKeyInCookie=false, flow='implicit', authorizationUrl='http://petstore.swagger.io/api/oauth/dialog', tokenUrl='null', refreshUrl='null', scopes=[{scope=write:pets, description=modify pets in your account}, {scope=read:pets, description=read your pets}], isCode=false, isPassword=false, isApplication=false, isImplicit=true, openIdConnectUrl=null}], basePath=http://petstore.swagger.io:80/v2, classname=DefaultApi, gitRepoId=GIT_REPO_ID, generatedDate=2024-06-20T10:09:39.405206Z[UTC], appDescriptionWithNewLines=This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\, generateRecursiveDependentModels=false, pubPublishTo=null, gitUserId=GIT_USER_ID}
```
*/