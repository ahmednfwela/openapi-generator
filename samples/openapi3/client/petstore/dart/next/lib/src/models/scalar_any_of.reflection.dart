// Model reflection

part of 'scalar_any_of.dart';


//class reflection

class ScalarAnyOfJsonReflection {
    const ScalarAnyOfJsonReflection();
}
class ScalarAnyOfXmlReflection {
    const ScalarAnyOfXmlReflection();
}


/*
{licenseUrl&#x3D;https://www.apache.org/licenses/LICENSE-2.0.html, pubName&#x3D;openapi, pubLibrary&#x3D;openapi.api, appVersion&#x3D;1.0.0, generatedYear&#x3D;2024, generatorClass&#x3D;org.openapitools.codegen.languages.DartNextClientCodegen, modelPackage&#x3D;models, sourceFolder&#x3D;src, gitHost&#x3D;github.com, templateDir&#x3D;/home/ahmed/packages/openapi-generator/modules/openapi-generator/src/main/resources/dart-next, apiDocPath&#x3D;doc/, licenseInfo&#x3D;Apache-2.0, generateApis&#x3D;true, generateModelDocs&#x3D;true, generateModelTests&#x3D;true, pubRepository&#x3D;null, generateApiTests&#x3D;true, lambda&#x3D;{lowercase&#x3D;org.openapitools.codegen.templating.mustache.LowercaseLambda@252ec02e, uppercase&#x3D;org.openapitools.codegen.templating.mustache.UppercaseLambda@11e9ac24, snakecase&#x3D;org.openapitools.codegen.templating.mustache.SnakecaseLambda@74f280bd, titlecase&#x3D;org.openapitools.codegen.templating.mustache.TitlecaseLambda@675b18ff, kebabcase&#x3D;org.openapitools.codegen.templating.mustache.KebabCaseLambda@34279b8a, camelcase&#x3D;org.openapitools.codegen.templating.mustache.CamelCaseAndSanitizeLambda@687389a6, pascalcase&#x3D;org.openapitools.codegen.templating.mustache.CamelCaseAndSanitizeLambda@8641b7d, uncamelize&#x3D;org.openapitools.codegen.templating.mustache.UncamelizeLambda@37c7766e, forwardslash&#x3D;org.openapitools.codegen.templating.mustache.ForwardSlashLambda@3fb450d7, backslash&#x3D;org.openapitools.codegen.templating.mustache.BackSlashLambda@4b7ed03e, doublequote&#x3D;org.openapitools.codegen.templating.mustache.DoubleQuoteLambda@636985df, indented&#x3D;org.openapitools.codegen.templating.mustache.IndentedLambda@6f91fbda, indented_8&#x3D;org.openapitools.codegen.templating.mustache.IndentedLambda@723e3c17, indented_12&#x3D;org.openapitools.codegen.templating.mustache.IndentedLambda@4ffced4e, indented_16&#x3D;org.openapitools.codegen.templating.mustache.IndentedLambda@6094de13}, generateModels&#x3D;true, pubVersion&#x3D;1.0.0, inputSpec&#x3D;modules/openapi-generator/src/test/resources/3_0/java/petstore-with-fake-endpoints-models-for-testing-okhttp-gson.yaml, hideGenerationTimestamp&#x3D;true, unescapedAppDescription&#x3D;This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: &quot; \, models&#x3D;[{importPath&#x3D;models.ScalarAnyOf, model&#x3D;CodegenModel{name&#x3D;&#39;ScalarAnyOf&#39;, schemaName&#x3D;&#39;ScalarAnyOf&#39;, parent&#x3D;&#39;null&#39;, parentSchema&#x3D;&#39;null&#39;, interfaces&#x3D;[], interfaceModels&#x3D;[], allParents&#x3D;null, parentModel&#x3D;null, children&#x3D;[], anyOf&#x3D;[String, bool, num], oneOf&#x3D;[], allOf&#x3D;[], classname&#x3D;&#39;ScalarAnyOf&#39;, title&#x3D;&#39;null&#39;, description&#x3D;&#39;Values of scalar type using anyOf&#39;, classVarName&#x3D;&#39;scalarAnyOf&#39;, modelJson&#x3D;&#39;{
  &quot;description&quot; : &quot;Values of scalar type using anyOf&quot;,
  &quot;anyOf&quot; : [ {
    &quot;maxLength&quot; : 1089,
    &quot;type&quot; : &quot;string&quot;
  }, {
    &quot;type&quot; : &quot;number&quot;
  }, {
    &quot;type&quot; : &quot;boolean&quot;
  } ]
}&#39;, dataType&#x3D;&#39;AnyOfstringnumberboolean&#39;, xmlPrefix&#x3D;&#39;null&#39;, xmlNamespace&#x3D;&#39;null&#39;, xmlName&#x3D;&#39;null&#39;, classFilename&#x3D;&#39;scalar_any_of&#39;, unescapedDescription&#x3D;&#39;Values of scalar type using anyOf&#39;, discriminator&#x3D;null, defaultValue&#x3D;&#39;null&#39;, arrayModelType&#x3D;&#39;null&#39;, isAlias&#x3D;false, isString&#x3D;false, isInteger&#x3D;false, isShort&#x3D;false, isLong&#x3D;false, isUnboundedInteger&#x3D;false, isBoolean&#x3D;false, isNumber&#x3D;false, isNumeric&#x3D;false, isFloat&#x3D;false, isDouble&#x3D;false, isDate&#x3D;false, isDateTime&#x3D;false, vars&#x3D;[], allVars&#x3D;[], nonNullableVars&#x3D;[], requiredVars&#x3D;[], optionalVars&#x3D;[], readOnlyVars&#x3D;[], readWriteVars&#x3D;[], parentVars&#x3D;[], allowableValues&#x3D;null, mandatory&#x3D;[], allMandatory&#x3D;[], imports&#x3D;[AnyOfstringnumberboolean], hasVars&#x3D;false, emptyVars&#x3D;true, hasMoreModels&#x3D;false, hasEnums&#x3D;false, isEnum&#x3D;false, isNullable&#x3D;false, hasRequired&#x3D;false, hasOptional&#x3D;false, isArray&#x3D;false, hasChildren&#x3D;false, isMap&#x3D;false, isOptional&#x3D;false, isDeprecated&#x3D;false, hasReadOnly&#x3D;false, hasOnlyReadOnly&#x3D;true, externalDocumentation&#x3D;null, vendorExtensions&#x3D;{x-is-parent&#x3D;false, x-has-self-and-ancestor-only-props&#x3D;false, x-is-child&#x3D;false, x-is-pure&#x3D;false, x-self-only-props&#x3D;[], x-has-ancestor-only-props&#x3D;false, x-has-self-only-props&#x3D;false, x-self-and-ancestor-only-props&#x3D;[], x-ancestor-only-props&#x3D;[]}, additionalPropertiesType&#x3D;&#39;null&#39;, isAdditionalPropertiesTrue&#x3D;&#39;false&#39;, maxProperties&#x3D;null, minProperties&#x3D;null, uniqueItems&#x3D;false, uniqueItemsBoolean&#x3D;null, maxItems&#x3D;null, minItems&#x3D;null, maxLength&#x3D;null, minLength&#x3D;null, exclusiveMinimum&#x3D;false, exclusiveMaximum&#x3D;false, minimum&#x3D;&#39;null&#39;, maximum&#x3D;&#39;null&#39;, pattern&#x3D;&#39;null&#39;, multipleOf&#x3D;&#39;null&#39;, items&#x3D;&#39;null&#39;, additionalProperties&#x3D;&#39;null&#39;, isModel&#x3D;&#39;false&#39;, isNull&#x3D;&#39;false, hasValidation&#x3D;&#39;false, getAdditionalPropertiesIsAnyType&#x3D;false, getHasDiscriminatorWithNonEmptyMapping&#x3D;false, getIsAnyType&#x3D;true, composedSchemas&#x3D;CodegenComposedSchemas{oneOf&#x3D;null, anyOf&#x3D;[CodegenProperty{openApiType&#x3D;&#39;string&#39;, baseName&#x3D;&#39;any_of_0&#39;, complexType&#x3D;&#39;null&#39;, getter&#x3D;&#39;getAnyOf0&#39;, setter&#x3D;&#39;setAnyOf0&#39;, description&#x3D;&#39;null&#39;, dataType&#x3D;&#39;String&#39;, datatypeWithEnum&#x3D;&#39;String&#39;, dataFormat&#x3D;&#39;null&#39;, name&#x3D;&#39;anyOf0&#39;, min&#x3D;&#39;null&#39;, max&#x3D;&#39;null&#39;, defaultValue&#x3D;&#39;null&#39;, defaultValueWithParam&#x3D;&#39; &#x3D; data.any_of_0;&#39;, baseType&#x3D;&#39;String&#39;, containerType&#x3D;&#39;null&#39;, containerTypeMapped&#x3D;&#39;null&#39;, title&#x3D;&#39;null&#39;, unescapedDescription&#x3D;&#39;null&#39;, maxLength&#x3D;1089, minLength&#x3D;null, pattern&#x3D;&#39;null&#39;, example&#x3D;&#39;null&#39;, jsonSchema&#x3D;&#39;{
  &quot;maxLength&quot; : 1089,
  &quot;type&quot; : &quot;string&quot;
}&#39;, minimum&#x3D;&#39;null&#39;, maximum&#x3D;&#39;null&#39;, exclusiveMinimum&#x3D;false, exclusiveMaximum&#x3D;false, required&#x3D;false, deprecated&#x3D;false, hasMoreNonReadOnly&#x3D;false, isPrimitiveType&#x3D;true, isModel&#x3D;false, isContainer&#x3D;false, isString&#x3D;true, isNumeric&#x3D;false, isInteger&#x3D;false, isShort&#x3D;false, isLong&#x3D;false, isUnboundedInteger&#x3D;false, isNumber&#x3D;false, isFloat&#x3D;false, isDouble&#x3D;false, isDecimal&#x3D;false, isByteArray&#x3D;false, isBinary&#x3D;false, isFile&#x3D;false, isBoolean&#x3D;false, isDate&#x3D;false, isDateTime&#x3D;false, isUuid&#x3D;false, isUri&#x3D;false, isEmail&#x3D;false, isPassword&#x3D;false, isFreeFormObject&#x3D;false, isArray&#x3D;false, isMap&#x3D;false, isOptional&#x3D;false, isEnum&#x3D;false, isInnerEnum&#x3D;false, isEnumRef&#x3D;false, isAnyType&#x3D;false, isReadOnly&#x3D;false, isWriteOnly&#x3D;false, isNullable&#x3D;false, isSelfReference&#x3D;false, isCircularReference&#x3D;false, isDiscriminator&#x3D;false, isNew&#x3D;false, isOverridden&#x3D;null, _enum&#x3D;null, allowableValues&#x3D;null, items&#x3D;null, additionalProperties&#x3D;null, vars&#x3D;[], requiredVars&#x3D;[], mostInnerItems&#x3D;null, vendorExtensions&#x3D;{}, hasValidation&#x3D;true, isInherited&#x3D;false, discriminatorValue&#x3D;&#39;null&#39;, nameInCamelCase&#x3D;&#39;anyOf0&#39;, nameInPascalCase&#x3D;&#39;AnyOf0&#39;, nameInSnakeCase&#x3D;&#39;ANY_OF0&#39;, enumName&#x3D;&#39;null&#39;, maxItems&#x3D;null, minItems&#x3D;null, maxProperties&#x3D;null, minProperties&#x3D;null, uniqueItems&#x3D;false, uniqueItemsBoolean&#x3D;null, multipleOf&#x3D;null, isXmlAttribute&#x3D;false, xmlPrefix&#x3D;&#39;null&#39;, xmlName&#x3D;&#39;null&#39;, xmlNamespace&#x3D;&#39;null&#39;, isXmlWrapped&#x3D;false, isNull&#x3D;false, isVoid&#x3D;false, getAdditionalPropertiesIsAnyType&#x3D;false, getHasVars&#x3D;false, getHasRequired&#x3D;false, getHasDiscriminatorWithNonEmptyMapping&#x3D;false, composedSchemas&#x3D;null, hasMultipleTypes&#x3D;false, requiredVarsMap&#x3D;null, ref&#x3D;null, schemaIsFromAdditionalProperties&#x3D;false, isBooleanSchemaTrue&#x3D;false, isBooleanSchemaFalse&#x3D;false, format&#x3D;null, dependentRequired&#x3D;null, contains&#x3D;null}, CodegenProperty{openApiType&#x3D;&#39;number&#39;, baseName&#x3D;&#39;any_of_1&#39;, complexType&#x3D;&#39;null&#39;, getter&#x3D;&#39;getAnyOf1&#39;, setter&#x3D;&#39;setAnyOf1&#39;, description&#x3D;&#39;null&#39;, dataType&#x3D;&#39;num&#39;, datatypeWithEnum&#x3D;&#39;num&#39;, dataFormat&#x3D;&#39;null&#39;, name&#x3D;&#39;anyOf1&#39;, min&#x3D;&#39;null&#39;, max&#x3D;&#39;null&#39;, defaultValue&#x3D;&#39;null&#39;, defaultValueWithParam&#x3D;&#39; &#x3D; data.any_of_1;&#39;, baseType&#x3D;&#39;num&#39;, containerType&#x3D;&#39;null&#39;, containerTypeMapped&#x3D;&#39;null&#39;, title&#x3D;&#39;null&#39;, unescapedDescription&#x3D;&#39;null&#39;, maxLength&#x3D;null, minLength&#x3D;null, pattern&#x3D;&#39;null&#39;, example&#x3D;&#39;null&#39;, jsonSchema&#x3D;&#39;{
  &quot;type&quot; : &quot;number&quot;
}&#39;, minimum&#x3D;&#39;null&#39;, maximum&#x3D;&#39;null&#39;, exclusiveMinimum&#x3D;false, exclusiveMaximum&#x3D;false, required&#x3D;false, deprecated&#x3D;false, hasMoreNonReadOnly&#x3D;false, isPrimitiveType&#x3D;true, isModel&#x3D;false, isContainer&#x3D;false, isString&#x3D;false, isNumeric&#x3D;true, isInteger&#x3D;false, isShort&#x3D;false, isLong&#x3D;false, isUnboundedInteger&#x3D;false, isNumber&#x3D;true, isFloat&#x3D;false, isDouble&#x3D;false, isDecimal&#x3D;false, isByteArray&#x3D;false, isBinary&#x3D;false, isFile&#x3D;false, isBoolean&#x3D;false, isDate&#x3D;false, isDateTime&#x3D;false, isUuid&#x3D;false, isUri&#x3D;false, isEmail&#x3D;false, isPassword&#x3D;false, isFreeFormObject&#x3D;false, isArray&#x3D;false, isMap&#x3D;false, isOptional&#x3D;false, isEnum&#x3D;false, isInnerEnum&#x3D;false, isEnumRef&#x3D;false, isAnyType&#x3D;false, isReadOnly&#x3D;false, isWriteOnly&#x3D;false, isNullable&#x3D;false, isSelfReference&#x3D;false, isCircularReference&#x3D;false, isDiscriminator&#x3D;false, isNew&#x3D;false, isOverridden&#x3D;null, _enum&#x3D;null, allowableValues&#x3D;null, items&#x3D;null, additionalProperties&#x3D;null, vars&#x3D;[], requiredVars&#x3D;[], mostInnerItems&#x3D;null, vendorExtensions&#x3D;{}, hasValidation&#x3D;false, isInherited&#x3D;false, discriminatorValue&#x3D;&#39;null&#39;, nameInCamelCase&#x3D;&#39;anyOf1&#39;, nameInPascalCase&#x3D;&#39;AnyOf1&#39;, nameInSnakeCase&#x3D;&#39;ANY_OF1&#39;, enumName&#x3D;&#39;null&#39;, maxItems&#x3D;null, minItems&#x3D;null, maxProperties&#x3D;null, minProperties&#x3D;null, uniqueItems&#x3D;false, uniqueItemsBoolean&#x3D;null, multipleOf&#x3D;null, isXmlAttribute&#x3D;false, xmlPrefix&#x3D;&#39;null&#39;, xmlName&#x3D;&#39;null&#39;, xmlNamespace&#x3D;&#39;null&#39;, isXmlWrapped&#x3D;false, isNull&#x3D;false, isVoid&#x3D;false, getAdditionalPropertiesIsAnyType&#x3D;false, getHasVars&#x3D;false, getHasRequired&#x3D;false, getHasDiscriminatorWithNonEmptyMapping&#x3D;false, composedSchemas&#x3D;null, hasMultipleTypes&#x3D;false, requiredVarsMap&#x3D;null, ref&#x3D;null, schemaIsFromAdditionalProperties&#x3D;false, isBooleanSchemaTrue&#x3D;false, isBooleanSchemaFalse&#x3D;false, format&#x3D;null, dependentRequired&#x3D;null, contains&#x3D;null}, CodegenProperty{openApiType&#x3D;&#39;boolean&#39;, baseName&#x3D;&#39;any_of_2&#39;, complexType&#x3D;&#39;null&#39;, getter&#x3D;&#39;getAnyOf2&#39;, setter&#x3D;&#39;setAnyOf2&#39;, description&#x3D;&#39;null&#39;, dataType&#x3D;&#39;bool&#39;, datatypeWithEnum&#x3D;&#39;bool&#39;, dataFormat&#x3D;&#39;null&#39;, name&#x3D;&#39;anyOf2&#39;, min&#x3D;&#39;null&#39;, max&#x3D;&#39;null&#39;, defaultValue&#x3D;&#39;null&#39;, defaultValueWithParam&#x3D;&#39; &#x3D; data.any_of_2;&#39;, baseType&#x3D;&#39;bool&#39;, containerType&#x3D;&#39;null&#39;, containerTypeMapped&#x3D;&#39;null&#39;, title&#x3D;&#39;null&#39;, unescapedDescription&#x3D;&#39;null&#39;, maxLength&#x3D;null, minLength&#x3D;null, pattern&#x3D;&#39;null&#39;, example&#x3D;&#39;null&#39;, jsonSchema&#x3D;&#39;{
  &quot;type&quot; : &quot;boolean&quot;
}&#39;, minimum&#x3D;&#39;null&#39;, maximum&#x3D;&#39;null&#39;, exclusiveMinimum&#x3D;false, exclusiveMaximum&#x3D;false, required&#x3D;false, deprecated&#x3D;false, hasMoreNonReadOnly&#x3D;false, isPrimitiveType&#x3D;true, isModel&#x3D;false, isContainer&#x3D;false, isString&#x3D;false, isNumeric&#x3D;false, isInteger&#x3D;false, isShort&#x3D;false, isLong&#x3D;false, isUnboundedInteger&#x3D;false, isNumber&#x3D;false, isFloat&#x3D;false, isDouble&#x3D;false, isDecimal&#x3D;false, isByteArray&#x3D;false, isBinary&#x3D;false, isFile&#x3D;false, isBoolean&#x3D;true, isDate&#x3D;false, isDateTime&#x3D;false, isUuid&#x3D;false, isUri&#x3D;false, isEmail&#x3D;false, isPassword&#x3D;false, isFreeFormObject&#x3D;false, isArray&#x3D;false, isMap&#x3D;false, isOptional&#x3D;false, isEnum&#x3D;false, isInnerEnum&#x3D;false, isEnumRef&#x3D;false, isAnyType&#x3D;false, isReadOnly&#x3D;false, isWriteOnly&#x3D;false, isNullable&#x3D;false, isSelfReference&#x3D;false, isCircularReference&#x3D;false, isDiscriminator&#x3D;false, isNew&#x3D;false, isOverridden&#x3D;null, _enum&#x3D;null, allowableValues&#x3D;null, items&#x3D;null, additionalProperties&#x3D;null, vars&#x3D;[], requiredVars&#x3D;[], mostInnerItems&#x3D;null, vendorExtensions&#x3D;{}, hasValidation&#x3D;false, isInherited&#x3D;false, discriminatorValue&#x3D;&#39;null&#39;, nameInCamelCase&#x3D;&#39;anyOf2&#39;, nameInPascalCase&#x3D;&#39;AnyOf2&#39;, nameInSnakeCase&#x3D;&#39;ANY_OF2&#39;, enumName&#x3D;&#39;null&#39;, maxItems&#x3D;null, minItems&#x3D;null, maxProperties&#x3D;null, minProperties&#x3D;null, uniqueItems&#x3D;false, uniqueItemsBoolean&#x3D;null, multipleOf&#x3D;null, isXmlAttribute&#x3D;false, xmlPrefix&#x3D;&#39;null&#39;, xmlName&#x3D;&#39;null&#39;, xmlNamespace&#x3D;&#39;null&#39;, isXmlWrapped&#x3D;false, isNull&#x3D;false, isVoid&#x3D;false, getAdditionalPropertiesIsAnyType&#x3D;false, getHasVars&#x3D;false, getHasRequired&#x3D;false, getHasDiscriminatorWithNonEmptyMapping&#x3D;false, composedSchemas&#x3D;null, hasMultipleTypes&#x3D;false, requiredVarsMap&#x3D;null, ref&#x3D;null, schemaIsFromAdditionalProperties&#x3D;false, isBooleanSchemaTrue&#x3D;false, isBooleanSchemaFalse&#x3D;false, format&#x3D;null, dependentRequired&#x3D;null, contains&#x3D;null}], allOf&#x3D;null, not&#x3D;null}, hasMultipleTypes&#x3D;false, isDecimal&#x3D;false, isUUID&#x3D;false, isURI&#x3D;false, requiredVarsMap&#x3D;null, ref&#x3D;null, schemaIsFromAdditionalProperties&#x3D;false, isBooleanSchemaTrue&#x3D;false, isBooleanSchemaFalse&#x3D;false, format&#x3D;null, dependentRequired&#x3D;null, contains&#x3D;null}}], package&#x3D;models, imports&#x3D;[{import&#x3D;models.AnyOfstringnumberboolean}], pubAuthor&#x3D;Author, appName&#x3D;OpenAPI Petstore, appDescription&#x3D;This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \&quot; \\, generateApiDocs&#x3D;true, useEnumExtension&#x3D;false, generatorVersion&#x3D;7.7.0-SNAPSHOT, releaseNote&#x3D;Minor update, version&#x3D;1.0.0, apiPackage&#x3D;apis, pubAuthorEmail&#x3D;author@homepage, modelDocPath&#x3D;doc/, classname&#x3D;ScalarAnyOf, pubDescription&#x3D;OpenAPI API client, pubHomepage&#x3D;homepage, gitRepoId&#x3D;GIT_REPO_ID, generatedDate&#x3D;2024-06-20T08:47:57.675996Z[UTC], appDescriptionWithNewLines&#x3D;This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \&quot; \\, generateRecursiveDependentModels&#x3D;false, pubPublishTo&#x3D;null, gitUserId&#x3D;GIT_USER_ID, generateWebhooks&#x3D;true}
*/