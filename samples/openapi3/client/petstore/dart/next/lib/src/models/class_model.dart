// Model def

import 'dart:convert';
import 'dart:typed_data';
import 'package:openapi/_internal.dart';
import 'package:xml/xml.dart';

part 'class_model.reflection.dart';
part 'class_model.serialization.dart';


//class defination

///
mixin ClassModelMixin {

}

///
class ClassModel with ClassModelMixin {

}


/*
{licenseUrl=https://www.apache.org/licenses/LICENSE-2.0.html, pubName=openapi, pubLibrary=openapi.api, appVersion=1.0.0, generatedYear=2024, generatorClass=org.openapitools.codegen.languages.DartNextClientCodegen, modelPackage=models, sourceFolder=src, gitHost=github.com, templateDir=/home/ahmed/packages/openapi-generator/modules/openapi-generator/src/main/resources/dart-next, apiDocPath=doc/, licenseInfo=Apache-2.0, generateApis=true, generateModelDocs=true, generateModelTests=true, pubRepository=null, generateApiTests=true, lambda={lowercase=org.openapitools.codegen.templating.mustache.LowercaseLambda@5fef0c19, uppercase=org.openapitools.codegen.templating.mustache.UppercaseLambda@2e6d76ba, snakecase=org.openapitools.codegen.templating.mustache.SnakecaseLambda@22a6d75c, titlecase=org.openapitools.codegen.templating.mustache.TitlecaseLambda@5a9840f3, kebabcase=org.openapitools.codegen.templating.mustache.KebabCaseLambda@7d30007d, camelcase=org.openapitools.codegen.templating.mustache.CamelCaseAndSanitizeLambda@382d71c7, pascalcase=org.openapitools.codegen.templating.mustache.CamelCaseAndSanitizeLambda@2ca54da9, uncamelize=org.openapitools.codegen.templating.mustache.UncamelizeLambda@34a20f16, forwardslash=org.openapitools.codegen.templating.mustache.ForwardSlashLambda@496cc217, backslash=org.openapitools.codegen.templating.mustache.BackSlashLambda@1a1c21b4, doublequote=org.openapitools.codegen.templating.mustache.DoubleQuoteLambda@1cd2ff5b, indented=org.openapitools.codegen.templating.mustache.IndentedLambda@38ac8968, indented_8=org.openapitools.codegen.templating.mustache.IndentedLambda@17ff8810, indented_12=org.openapitools.codegen.templating.mustache.IndentedLambda@6c951ada, indented_16=org.openapitools.codegen.templating.mustache.IndentedLambda@67b61834}, generateModels=true, pubVersion=1.0.0, inputSpec=modules/openapi-generator/src/test/resources/3_0/java/petstore-with-fake-endpoints-models-for-testing-okhttp-gson.yaml, hideGenerationTimestamp=true, unescapedAppDescription=This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: " \, models=[{importPath=models.ClassModel, model=CodegenModel{name='ClassModel', schemaName='ClassModel', parent='null', parentSchema='null', interfaces=null, interfaceModels=[], allParents=null, parentModel=null, children=[], anyOf=[], oneOf=[], allOf=[], classname='ClassModel', title='null', description='Model for testing model with \"_class\" property', classVarName='classModel', modelJson='{
  "properties" : {
    "_class" : {
      "type" : "string"
    }
  },
  "description" : "Model for testing model with \"_class\" property"
}', dataType='object', xmlPrefix='null', xmlNamespace='null', xmlName='null', classFilename='class_model', unescapedDescription='Model for testing model with "_class" property', discriminator=null, defaultValue='null', arrayModelType='null', isAlias=false, isString=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isBoolean=false, isNumber=false, isNumeric=false, isFloat=false, isDouble=false, isDate=false, isDateTime=false, vars=[CodegenProperty{openApiType='string', baseName='_class', complexType='string', getter='get$Class', setter='set$Class', description='null', dataType='String', datatypeWithEnum='String', dataFormat='null', name='$class', min='null', max='null', defaultValue='null', defaultValueWithParam=' = data._class;', baseType='string', containerType='null', containerTypeMapped='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "type" : "string"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=false, isContainer=false, isString=true, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isPassword=false, isFreeFormObject=false, isArray=false, isMap=false, isOptional=false, isEnum=false, isInnerEnum=false, isEnumRef=false, isAnyType=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, isNew=false, isOverridden=null, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='$class', nameInPascalCase='$Class', nameInSnakeCase='$_CLASS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, isVoid=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, requiredVarsMap=null, ref=null, schemaIsFromAdditionalProperties=false, isBooleanSchemaTrue=false, isBooleanSchemaFalse=false, format=null, dependentRequired=null, contains=null}], allVars=[CodegenProperty{openApiType='string', baseName='_class', complexType='string', getter='get$Class', setter='set$Class', description='null', dataType='String', datatypeWithEnum='String', dataFormat='null', name='$class', min='null', max='null', defaultValue='null', defaultValueWithParam=' = data._class;', baseType='string', containerType='null', containerTypeMapped='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "type" : "string"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=false, isContainer=false, isString=true, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isPassword=false, isFreeFormObject=false, isArray=false, isMap=false, isOptional=false, isEnum=false, isInnerEnum=false, isEnumRef=false, isAnyType=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, isNew=false, isOverridden=null, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='$class', nameInPascalCase='$Class', nameInSnakeCase='$_CLASS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, isVoid=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, requiredVarsMap=null, ref=null, schemaIsFromAdditionalProperties=false, isBooleanSchemaTrue=false, isBooleanSchemaFalse=false, format=null, dependentRequired=null, contains=null}], nonNullableVars=[CodegenProperty{openApiType='string', baseName='_class', complexType='string', getter='get$Class', setter='set$Class', description='null', dataType='String', datatypeWithEnum='String', dataFormat='null', name='$class', min='null', max='null', defaultValue='null', defaultValueWithParam=' = data._class;', baseType='string', containerType='null', containerTypeMapped='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "type" : "string"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=false, isContainer=false, isString=true, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isPassword=false, isFreeFormObject=false, isArray=false, isMap=false, isOptional=false, isEnum=false, isInnerEnum=false, isEnumRef=false, isAnyType=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, isNew=false, isOverridden=null, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='$class', nameInPascalCase='$Class', nameInSnakeCase='$_CLASS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, isVoid=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, requiredVarsMap=null, ref=null, schemaIsFromAdditionalProperties=false, isBooleanSchemaTrue=false, isBooleanSchemaFalse=false, format=null, dependentRequired=null, contains=null}], requiredVars=[], optionalVars=[CodegenProperty{openApiType='string', baseName='_class', complexType='string', getter='get$Class', setter='set$Class', description='null', dataType='String', datatypeWithEnum='String', dataFormat='null', name='$class', min='null', max='null', defaultValue='null', defaultValueWithParam=' = data._class;', baseType='string', containerType='null', containerTypeMapped='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "type" : "string"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=false, isContainer=false, isString=true, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isPassword=false, isFreeFormObject=false, isArray=false, isMap=false, isOptional=false, isEnum=false, isInnerEnum=false, isEnumRef=false, isAnyType=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, isNew=false, isOverridden=null, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='$class', nameInPascalCase='$Class', nameInSnakeCase='$_CLASS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, isVoid=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, requiredVarsMap=null, ref=null, schemaIsFromAdditionalProperties=false, isBooleanSchemaTrue=false, isBooleanSchemaFalse=false, format=null, dependentRequired=null, contains=null}], readOnlyVars=[], readWriteVars=[CodegenProperty{openApiType='string', baseName='_class', complexType='string', getter='get$Class', setter='set$Class', description='null', dataType='String', datatypeWithEnum='String', dataFormat='null', name='$class', min='null', max='null', defaultValue='null', defaultValueWithParam=' = data._class;', baseType='string', containerType='null', containerTypeMapped='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "type" : "string"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=false, isContainer=false, isString=true, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isPassword=false, isFreeFormObject=false, isArray=false, isMap=false, isOptional=false, isEnum=false, isInnerEnum=false, isEnumRef=false, isAnyType=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, isNew=false, isOverridden=null, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='$class', nameInPascalCase='$Class', nameInSnakeCase='$_CLASS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, isVoid=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false, requiredVarsMap=null, ref=null, schemaIsFromAdditionalProperties=false, isBooleanSchemaTrue=false, isBooleanSchemaFalse=false, format=null, dependentRequired=null, contains=null}], parentVars=[], allowableValues=null, mandatory=[], allMandatory=[], imports=[string], hasVars=true, emptyVars=false, hasMoreModels=false, hasEnums=false, isEnum=false, isNullable=false, hasRequired=false, hasOptional=true, isArray=false, hasChildren=false, isMap=false, isOptional=false, isDeprecated=false, hasReadOnly=false, hasOnlyReadOnly=false, externalDocumentation=null, vendorExtensions={}, additionalPropertiesType='null', isAdditionalPropertiesTrue='false', maxProperties=null, minProperties=null, uniqueItems=false, uniqueItemsBoolean=null, maxItems=null, minItems=null, maxLength=null, minLength=null, exclusiveMinimum=false, exclusiveMaximum=false, minimum='null', maximum='null', pattern='null', multipleOf='null', items='null', additionalProperties='null', isModel='true', isNull='false, hasValidation='false, getAdditionalPropertiesIsAnyType=false, getHasDiscriminatorWithNonEmptyMapping=false, getIsAnyType=false, composedSchemas=null, hasMultipleTypes=false, isDecimal=false, isUUID=false, isURI=false, requiredVarsMap=null, ref=null, schemaIsFromAdditionalProperties=false, isBooleanSchemaTrue=false, isBooleanSchemaFalse=false, format=null, dependentRequired=null, contains=null}}], package=models, imports=[{import=models.string}], pubAuthor=Author, appName=OpenAPI Petstore, appDescription=This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\, generateApiDocs=true, useEnumExtension=false, generatorVersion=7.7.0-SNAPSHOT, releaseNote=Minor update, version=1.0.0, apiPackage=apis, pubAuthorEmail=author@homepage, modelDocPath=doc/, classname=ClassModel, pubDescription=OpenAPI API client, pubHomepage=homepage, gitRepoId=GIT_REPO_ID, generatedDate=2024-06-19T03:10:16.024515Z[UTC], appDescriptionWithNewLines=This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\, generateRecursiveDependentModels=false, pubPublishTo=null, gitUserId=GIT_USER_ID, generateWebhooks=true}
*/