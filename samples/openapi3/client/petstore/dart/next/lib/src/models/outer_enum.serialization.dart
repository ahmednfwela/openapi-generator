// Model serialization
part of 'outer_enum.dart';


//TODO: enum serialization


/*
{licenseUrl&#x3D;https://www.apache.org/licenses/LICENSE-2.0.html, pubName&#x3D;openapi, pubLibrary&#x3D;openapi.api, appVersion&#x3D;1.0.0, generatedYear&#x3D;2024, generatorClass&#x3D;org.openapitools.codegen.languages.DartNextClientCodegen, modelPackage&#x3D;models, sourceFolder&#x3D;src, gitHost&#x3D;github.com, templateDir&#x3D;/home/ahmed/packages/openapi-generator/modules/openapi-generator/src/main/resources/dart-next, apiDocPath&#x3D;doc/, licenseInfo&#x3D;Apache-2.0, generateApis&#x3D;true, generateModelDocs&#x3D;true, generateModelTests&#x3D;true, pubRepository&#x3D;null, generateApiTests&#x3D;true, lambda&#x3D;{lowercase&#x3D;org.openapitools.codegen.templating.mustache.LowercaseLambda@5fef0c19, uppercase&#x3D;org.openapitools.codegen.templating.mustache.UppercaseLambda@2e6d76ba, snakecase&#x3D;org.openapitools.codegen.templating.mustache.SnakecaseLambda@22a6d75c, titlecase&#x3D;org.openapitools.codegen.templating.mustache.TitlecaseLambda@5a9840f3, kebabcase&#x3D;org.openapitools.codegen.templating.mustache.KebabCaseLambda@7d30007d, camelcase&#x3D;org.openapitools.codegen.templating.mustache.CamelCaseAndSanitizeLambda@382d71c7, pascalcase&#x3D;org.openapitools.codegen.templating.mustache.CamelCaseAndSanitizeLambda@2ca54da9, uncamelize&#x3D;org.openapitools.codegen.templating.mustache.UncamelizeLambda@34a20f16, forwardslash&#x3D;org.openapitools.codegen.templating.mustache.ForwardSlashLambda@496cc217, backslash&#x3D;org.openapitools.codegen.templating.mustache.BackSlashLambda@1a1c21b4, doublequote&#x3D;org.openapitools.codegen.templating.mustache.DoubleQuoteLambda@1cd2ff5b, indented&#x3D;org.openapitools.codegen.templating.mustache.IndentedLambda@38ac8968, indented_8&#x3D;org.openapitools.codegen.templating.mustache.IndentedLambda@17ff8810, indented_12&#x3D;org.openapitools.codegen.templating.mustache.IndentedLambda@6c951ada, indented_16&#x3D;org.openapitools.codegen.templating.mustache.IndentedLambda@67b61834}, generateModels&#x3D;true, pubVersion&#x3D;1.0.0, inputSpec&#x3D;modules/openapi-generator/src/test/resources/3_0/java/petstore-with-fake-endpoints-models-for-testing-okhttp-gson.yaml, hideGenerationTimestamp&#x3D;true, unescapedAppDescription&#x3D;This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: &quot; \, models&#x3D;[{importPath&#x3D;models.OuterEnum, model&#x3D;CodegenModel{name&#x3D;&#39;OuterEnum&#39;, schemaName&#x3D;&#39;OuterEnum&#39;, parent&#x3D;&#39;null&#39;, parentSchema&#x3D;&#39;null&#39;, interfaces&#x3D;null, interfaceModels&#x3D;[], allParents&#x3D;null, parentModel&#x3D;null, children&#x3D;[], anyOf&#x3D;[], oneOf&#x3D;[], allOf&#x3D;[], classname&#x3D;&#39;OuterEnum&#39;, title&#x3D;&#39;null&#39;, description&#x3D;&#39;null&#39;, classVarName&#x3D;&#39;outerEnum&#39;, modelJson&#x3D;&#39;{
  &quot;type&quot; : &quot;string&quot;,
  &quot;nullable&quot; : true,
  &quot;enum&quot; : [ &quot;placed&quot;, &quot;approved&quot;, &quot;delivered&quot;, &quot;s&quot;, &quot;S&quot; ]
}&#39;, dataType&#x3D;&#39;string&#39;, xmlPrefix&#x3D;&#39;null&#39;, xmlNamespace&#x3D;&#39;null&#39;, xmlName&#x3D;&#39;null&#39;, classFilename&#x3D;&#39;outer_enum&#39;, unescapedDescription&#x3D;&#39;null&#39;, discriminator&#x3D;null, defaultValue&#x3D;&#39;null&#39;, arrayModelType&#x3D;&#39;null&#39;, isAlias&#x3D;false, isString&#x3D;true, isInteger&#x3D;false, isShort&#x3D;false, isLong&#x3D;false, isUnboundedInteger&#x3D;false, isBoolean&#x3D;false, isNumber&#x3D;false, isNumeric&#x3D;false, isFloat&#x3D;false, isDouble&#x3D;false, isDate&#x3D;false, isDateTime&#x3D;false, vars&#x3D;[], allVars&#x3D;[], nonNullableVars&#x3D;[], requiredVars&#x3D;[], optionalVars&#x3D;[], readOnlyVars&#x3D;[], readWriteVars&#x3D;[], parentVars&#x3D;[], allowableValues&#x3D;{values&#x3D;[placed, approved, delivered, s, S], enumVars&#x3D;[{name&#x3D;placed, isString&#x3D;false, value&#x3D;&#39;placed&#39;}, {name&#x3D;approved, isString&#x3D;false, value&#x3D;&#39;approved&#39;}, {name&#x3D;delivered, isString&#x3D;false, value&#x3D;&#39;delivered&#39;}, {name&#x3D;s, isString&#x3D;false, value&#x3D;&#39;s&#39;}, {name&#x3D;S, isString&#x3D;false, value&#x3D;&#39;S&#39;}]}, mandatory&#x3D;[], allMandatory&#x3D;[], imports&#x3D;[], hasVars&#x3D;false, emptyVars&#x3D;false, hasMoreModels&#x3D;false, hasEnums&#x3D;false, isEnum&#x3D;true, isNullable&#x3D;true, hasRequired&#x3D;false, hasOptional&#x3D;false, isArray&#x3D;false, hasChildren&#x3D;false, isMap&#x3D;false, isOptional&#x3D;false, isDeprecated&#x3D;false, hasReadOnly&#x3D;false, hasOnlyReadOnly&#x3D;true, externalDocumentation&#x3D;null, vendorExtensions&#x3D;{}, additionalPropertiesType&#x3D;&#39;null&#39;, isAdditionalPropertiesTrue&#x3D;&#39;false&#39;, maxProperties&#x3D;null, minProperties&#x3D;null, uniqueItems&#x3D;false, uniqueItemsBoolean&#x3D;null, maxItems&#x3D;null, minItems&#x3D;null, maxLength&#x3D;null, minLength&#x3D;null, exclusiveMinimum&#x3D;false, exclusiveMaximum&#x3D;false, minimum&#x3D;&#39;null&#39;, maximum&#x3D;&#39;null&#39;, pattern&#x3D;&#39;null&#39;, multipleOf&#x3D;&#39;null&#39;, items&#x3D;&#39;null&#39;, additionalProperties&#x3D;&#39;null&#39;, isModel&#x3D;&#39;false&#39;, isNull&#x3D;&#39;false, hasValidation&#x3D;&#39;false, getAdditionalPropertiesIsAnyType&#x3D;false, getHasDiscriminatorWithNonEmptyMapping&#x3D;false, getIsAnyType&#x3D;false, composedSchemas&#x3D;null, hasMultipleTypes&#x3D;false, isDecimal&#x3D;false, isUUID&#x3D;false, isURI&#x3D;false, requiredVarsMap&#x3D;null, ref&#x3D;null, schemaIsFromAdditionalProperties&#x3D;false, isBooleanSchemaTrue&#x3D;false, isBooleanSchemaFalse&#x3D;false, format&#x3D;null, dependentRequired&#x3D;null, contains&#x3D;null}}], package&#x3D;models, imports&#x3D;[], pubAuthor&#x3D;Author, appName&#x3D;OpenAPI Petstore, appDescription&#x3D;This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \&quot; \\, generateApiDocs&#x3D;true, useEnumExtension&#x3D;false, generatorVersion&#x3D;7.7.0-SNAPSHOT, releaseNote&#x3D;Minor update, version&#x3D;1.0.0, apiPackage&#x3D;apis, pubAuthorEmail&#x3D;author@homepage, modelDocPath&#x3D;doc/, classname&#x3D;OuterEnum, pubDescription&#x3D;OpenAPI API client, pubHomepage&#x3D;homepage, gitRepoId&#x3D;GIT_REPO_ID, generatedDate&#x3D;2024-06-19T03:10:16.024515Z[UTC], appDescriptionWithNewLines&#x3D;This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \&quot; \\, generateRecursiveDependentModels&#x3D;false, pubPublishTo&#x3D;null, gitUserId&#x3D;GIT_USER_ID, generateWebhooks&#x3D;true}
*/