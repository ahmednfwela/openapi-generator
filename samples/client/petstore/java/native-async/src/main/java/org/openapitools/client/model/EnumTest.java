/*
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.StringJoiner;
import java.util.Objects;
import java.util.Map;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonValue;
import java.util.Arrays;
import org.openapitools.client.model.OuterEnum;
import org.openapitools.client.model.OuterEnumDefaultValue;
import org.openapitools.client.model.OuterEnumInteger;
import org.openapitools.client.model.OuterEnumIntegerDefaultValue;
import org.openapitools.jackson.nullable.JsonNullable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import org.openapitools.jackson.nullable.JsonNullable;
import java.util.NoSuchElementException;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;


import org.openapitools.client.ApiClient;
/**
 * EnumTest
 */
@JsonPropertyOrder({
  EnumTest.JSON_PROPERTY_ENUM_STRING,
  EnumTest.JSON_PROPERTY_ENUM_STRING_REQUIRED,
  EnumTest.JSON_PROPERTY_ENUM_INTEGER,
  EnumTest.JSON_PROPERTY_ENUM_INTEGER_ONLY,
  EnumTest.JSON_PROPERTY_ENUM_NUMBER,
  EnumTest.JSON_PROPERTY_OUTER_ENUM,
  EnumTest.JSON_PROPERTY_OUTER_ENUM_INTEGER,
  EnumTest.JSON_PROPERTY_OUTER_ENUM_DEFAULT_VALUE,
  EnumTest.JSON_PROPERTY_OUTER_ENUM_INTEGER_DEFAULT_VALUE
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.9.0-SNAPSHOT")
public class EnumTest {
  /**
   * Gets or Sets enumString
   */
  public enum EnumStringEnum {
    UPPER("UPPER"),
    
    LOWER("lower"),
    
    EMPTY("");

    private String value;

    EnumStringEnum(String value) {
      this.value = value;
    }

    @JsonValue
    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static EnumStringEnum fromValue(String value) {
      for (EnumStringEnum b : EnumStringEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
  }

  public static final String JSON_PROPERTY_ENUM_STRING = "enum_string";
  private EnumStringEnum enumString;

  /**
   * Gets or Sets enumStringRequired
   */
  public enum EnumStringRequiredEnum {
    UPPER("UPPER"),
    
    LOWER("lower"),
    
    EMPTY("");

    private String value;

    EnumStringRequiredEnum(String value) {
      this.value = value;
    }

    @JsonValue
    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static EnumStringRequiredEnum fromValue(String value) {
      for (EnumStringRequiredEnum b : EnumStringRequiredEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
  }

  public static final String JSON_PROPERTY_ENUM_STRING_REQUIRED = "enum_string_required";
  private EnumStringRequiredEnum enumStringRequired;

  /**
   * Gets or Sets enumInteger
   */
  public enum EnumIntegerEnum {
    NUMBER_1(1),
    
    NUMBER_MINUS_1(-1);

    private Integer value;

    EnumIntegerEnum(Integer value) {
      this.value = value;
    }

    @JsonValue
    public Integer getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static EnumIntegerEnum fromValue(Integer value) {
      for (EnumIntegerEnum b : EnumIntegerEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
  }

  public static final String JSON_PROPERTY_ENUM_INTEGER = "enum_integer";
  private EnumIntegerEnum enumInteger;

  /**
   * Gets or Sets enumIntegerOnly
   */
  public enum EnumIntegerOnlyEnum {
    NUMBER_2(2),
    
    NUMBER_MINUS_2(-2);

    private Integer value;

    EnumIntegerOnlyEnum(Integer value) {
      this.value = value;
    }

    @JsonValue
    public Integer getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static EnumIntegerOnlyEnum fromValue(Integer value) {
      for (EnumIntegerOnlyEnum b : EnumIntegerOnlyEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
  }

  public static final String JSON_PROPERTY_ENUM_INTEGER_ONLY = "enum_integer_only";
  private EnumIntegerOnlyEnum enumIntegerOnly;

  /**
   * Gets or Sets enumNumber
   */
  public enum EnumNumberEnum {
    NUMBER_1_DOT_1(1.1),
    
    NUMBER_MINUS_1_DOT_2(-1.2);

    private Double value;

    EnumNumberEnum(Double value) {
      this.value = value;
    }

    @JsonValue
    public Double getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static EnumNumberEnum fromValue(Double value) {
      for (EnumNumberEnum b : EnumNumberEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
  }

  public static final String JSON_PROPERTY_ENUM_NUMBER = "enum_number";
  private EnumNumberEnum enumNumber;

  public static final String JSON_PROPERTY_OUTER_ENUM = "outerEnum";
  private JsonNullable<OuterEnum> outerEnum = JsonNullable.<OuterEnum>undefined();

  public static final String JSON_PROPERTY_OUTER_ENUM_INTEGER = "outerEnumInteger";
  private OuterEnumInteger outerEnumInteger;

  public static final String JSON_PROPERTY_OUTER_ENUM_DEFAULT_VALUE = "outerEnumDefaultValue";
  private OuterEnumDefaultValue outerEnumDefaultValue = OuterEnumDefaultValue.PLACED;

  public static final String JSON_PROPERTY_OUTER_ENUM_INTEGER_DEFAULT_VALUE = "outerEnumIntegerDefaultValue";
  private OuterEnumIntegerDefaultValue outerEnumIntegerDefaultValue = OuterEnumIntegerDefaultValue.NUMBER_0;

  public EnumTest() { 
  }

  public EnumTest enumString(EnumStringEnum enumString) {
    this.enumString = enumString;
    return this;
  }

  /**
   * Get enumString
   * @return enumString
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_ENUM_STRING)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public EnumStringEnum getEnumString() {
    return enumString;
  }


  @JsonProperty(JSON_PROPERTY_ENUM_STRING)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setEnumString(EnumStringEnum enumString) {
    this.enumString = enumString;
  }


  public EnumTest enumStringRequired(EnumStringRequiredEnum enumStringRequired) {
    this.enumStringRequired = enumStringRequired;
    return this;
  }

  /**
   * Get enumStringRequired
   * @return enumStringRequired
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_ENUM_STRING_REQUIRED)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public EnumStringRequiredEnum getEnumStringRequired() {
    return enumStringRequired;
  }


  @JsonProperty(JSON_PROPERTY_ENUM_STRING_REQUIRED)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setEnumStringRequired(EnumStringRequiredEnum enumStringRequired) {
    this.enumStringRequired = enumStringRequired;
  }


  public EnumTest enumInteger(EnumIntegerEnum enumInteger) {
    this.enumInteger = enumInteger;
    return this;
  }

  /**
   * Get enumInteger
   * @return enumInteger
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_ENUM_INTEGER)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public EnumIntegerEnum getEnumInteger() {
    return enumInteger;
  }


  @JsonProperty(JSON_PROPERTY_ENUM_INTEGER)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setEnumInteger(EnumIntegerEnum enumInteger) {
    this.enumInteger = enumInteger;
  }


  public EnumTest enumIntegerOnly(EnumIntegerOnlyEnum enumIntegerOnly) {
    this.enumIntegerOnly = enumIntegerOnly;
    return this;
  }

  /**
   * Get enumIntegerOnly
   * @return enumIntegerOnly
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_ENUM_INTEGER_ONLY)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public EnumIntegerOnlyEnum getEnumIntegerOnly() {
    return enumIntegerOnly;
  }


  @JsonProperty(JSON_PROPERTY_ENUM_INTEGER_ONLY)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setEnumIntegerOnly(EnumIntegerOnlyEnum enumIntegerOnly) {
    this.enumIntegerOnly = enumIntegerOnly;
  }


  public EnumTest enumNumber(EnumNumberEnum enumNumber) {
    this.enumNumber = enumNumber;
    return this;
  }

  /**
   * Get enumNumber
   * @return enumNumber
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_ENUM_NUMBER)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public EnumNumberEnum getEnumNumber() {
    return enumNumber;
  }


  @JsonProperty(JSON_PROPERTY_ENUM_NUMBER)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setEnumNumber(EnumNumberEnum enumNumber) {
    this.enumNumber = enumNumber;
  }


  public EnumTest outerEnum(OuterEnum outerEnum) {
    this.outerEnum = JsonNullable.<OuterEnum>of(outerEnum);
    return this;
  }

  /**
   * Get outerEnum
   * @return outerEnum
   */
  @javax.annotation.Nullable
  @JsonIgnore
  public OuterEnum getOuterEnum() {
        return outerEnum.orElse(null);
  }

  @JsonProperty(JSON_PROPERTY_OUTER_ENUM)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public JsonNullable<OuterEnum> getOuterEnum_JsonNullable() {
    return outerEnum;
  }
  
  @JsonProperty(JSON_PROPERTY_OUTER_ENUM)
  public void setOuterEnum_JsonNullable(JsonNullable<OuterEnum> outerEnum) {
    this.outerEnum = outerEnum;
  }

  public void setOuterEnum(OuterEnum outerEnum) {
    this.outerEnum = JsonNullable.<OuterEnum>of(outerEnum);
  }


  public EnumTest outerEnumInteger(OuterEnumInteger outerEnumInteger) {
    this.outerEnumInteger = outerEnumInteger;
    return this;
  }

  /**
   * Get outerEnumInteger
   * @return outerEnumInteger
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_OUTER_ENUM_INTEGER)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public OuterEnumInteger getOuterEnumInteger() {
    return outerEnumInteger;
  }


  @JsonProperty(JSON_PROPERTY_OUTER_ENUM_INTEGER)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setOuterEnumInteger(OuterEnumInteger outerEnumInteger) {
    this.outerEnumInteger = outerEnumInteger;
  }


  public EnumTest outerEnumDefaultValue(OuterEnumDefaultValue outerEnumDefaultValue) {
    this.outerEnumDefaultValue = outerEnumDefaultValue;
    return this;
  }

  /**
   * Get outerEnumDefaultValue
   * @return outerEnumDefaultValue
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_OUTER_ENUM_DEFAULT_VALUE)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public OuterEnumDefaultValue getOuterEnumDefaultValue() {
    return outerEnumDefaultValue;
  }


  @JsonProperty(JSON_PROPERTY_OUTER_ENUM_DEFAULT_VALUE)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setOuterEnumDefaultValue(OuterEnumDefaultValue outerEnumDefaultValue) {
    this.outerEnumDefaultValue = outerEnumDefaultValue;
  }


  public EnumTest outerEnumIntegerDefaultValue(OuterEnumIntegerDefaultValue outerEnumIntegerDefaultValue) {
    this.outerEnumIntegerDefaultValue = outerEnumIntegerDefaultValue;
    return this;
  }

  /**
   * Get outerEnumIntegerDefaultValue
   * @return outerEnumIntegerDefaultValue
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_OUTER_ENUM_INTEGER_DEFAULT_VALUE)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public OuterEnumIntegerDefaultValue getOuterEnumIntegerDefaultValue() {
    return outerEnumIntegerDefaultValue;
  }


  @JsonProperty(JSON_PROPERTY_OUTER_ENUM_INTEGER_DEFAULT_VALUE)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setOuterEnumIntegerDefaultValue(OuterEnumIntegerDefaultValue outerEnumIntegerDefaultValue) {
    this.outerEnumIntegerDefaultValue = outerEnumIntegerDefaultValue;
  }


  /**
   * Return true if this Enum_Test object is equal to o.
   */
  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    EnumTest enumTest = (EnumTest) o;
    return Objects.equals(this.enumString, enumTest.enumString) &&
        Objects.equals(this.enumStringRequired, enumTest.enumStringRequired) &&
        Objects.equals(this.enumInteger, enumTest.enumInteger) &&
        Objects.equals(this.enumIntegerOnly, enumTest.enumIntegerOnly) &&
        Objects.equals(this.enumNumber, enumTest.enumNumber) &&
        equalsNullable(this.outerEnum, enumTest.outerEnum) &&
        Objects.equals(this.outerEnumInteger, enumTest.outerEnumInteger) &&
        Objects.equals(this.outerEnumDefaultValue, enumTest.outerEnumDefaultValue) &&
        Objects.equals(this.outerEnumIntegerDefaultValue, enumTest.outerEnumIntegerDefaultValue);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(enumString, enumStringRequired, enumInteger, enumIntegerOnly, enumNumber, hashCodeNullable(outerEnum), outerEnumInteger, outerEnumDefaultValue, outerEnumIntegerDefaultValue);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class EnumTest {\n");
    sb.append("    enumString: ").append(toIndentedString(enumString)).append("\n");
    sb.append("    enumStringRequired: ").append(toIndentedString(enumStringRequired)).append("\n");
    sb.append("    enumInteger: ").append(toIndentedString(enumInteger)).append("\n");
    sb.append("    enumIntegerOnly: ").append(toIndentedString(enumIntegerOnly)).append("\n");
    sb.append("    enumNumber: ").append(toIndentedString(enumNumber)).append("\n");
    sb.append("    outerEnum: ").append(toIndentedString(outerEnum)).append("\n");
    sb.append("    outerEnumInteger: ").append(toIndentedString(outerEnumInteger)).append("\n");
    sb.append("    outerEnumDefaultValue: ").append(toIndentedString(outerEnumDefaultValue)).append("\n");
    sb.append("    outerEnumIntegerDefaultValue: ").append(toIndentedString(outerEnumIntegerDefaultValue)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

  /**
   * Convert the instance into URL query string.
   *
   * @return URL query string
   */
  public String toUrlQueryString() {
    return toUrlQueryString(null);
  }

  /**
   * Convert the instance into URL query string.
   *
   * @param prefix prefix of the query string
   * @return URL query string
   */
  public String toUrlQueryString(String prefix) {
    String suffix = "";
    String containerSuffix = "";
    String containerPrefix = "";
    if (prefix == null) {
      // style=form, explode=true, e.g. /pet?name=cat&type=manx
      prefix = "";
    } else {
      // deepObject style e.g. /pet?id[name]=cat&id[type]=manx
      prefix = prefix + "[";
      suffix = "]";
      containerSuffix = "]";
      containerPrefix = "[";
    }

    StringJoiner joiner = new StringJoiner("&");

    // add `enum_string` to the URL query string
    if (getEnumString() != null) {
      joiner.add(String.format("%senum_string%s=%s", prefix, suffix, URLEncoder.encode(ApiClient.valueToString(getEnumString()), StandardCharsets.UTF_8).replaceAll("\\+", "%20")));
    }

    // add `enum_string_required` to the URL query string
    if (getEnumStringRequired() != null) {
      joiner.add(String.format("%senum_string_required%s=%s", prefix, suffix, URLEncoder.encode(ApiClient.valueToString(getEnumStringRequired()), StandardCharsets.UTF_8).replaceAll("\\+", "%20")));
    }

    // add `enum_integer` to the URL query string
    if (getEnumInteger() != null) {
      joiner.add(String.format("%senum_integer%s=%s", prefix, suffix, URLEncoder.encode(ApiClient.valueToString(getEnumInteger()), StandardCharsets.UTF_8).replaceAll("\\+", "%20")));
    }

    // add `enum_integer_only` to the URL query string
    if (getEnumIntegerOnly() != null) {
      joiner.add(String.format("%senum_integer_only%s=%s", prefix, suffix, URLEncoder.encode(ApiClient.valueToString(getEnumIntegerOnly()), StandardCharsets.UTF_8).replaceAll("\\+", "%20")));
    }

    // add `enum_number` to the URL query string
    if (getEnumNumber() != null) {
      joiner.add(String.format("%senum_number%s=%s", prefix, suffix, URLEncoder.encode(ApiClient.valueToString(getEnumNumber()), StandardCharsets.UTF_8).replaceAll("\\+", "%20")));
    }

    // add `outerEnum` to the URL query string
    if (getOuterEnum() != null) {
      joiner.add(String.format("%souterEnum%s=%s", prefix, suffix, URLEncoder.encode(ApiClient.valueToString(getOuterEnum()), StandardCharsets.UTF_8).replaceAll("\\+", "%20")));
    }

    // add `outerEnumInteger` to the URL query string
    if (getOuterEnumInteger() != null) {
      joiner.add(String.format("%souterEnumInteger%s=%s", prefix, suffix, URLEncoder.encode(ApiClient.valueToString(getOuterEnumInteger()), StandardCharsets.UTF_8).replaceAll("\\+", "%20")));
    }

    // add `outerEnumDefaultValue` to the URL query string
    if (getOuterEnumDefaultValue() != null) {
      joiner.add(String.format("%souterEnumDefaultValue%s=%s", prefix, suffix, URLEncoder.encode(ApiClient.valueToString(getOuterEnumDefaultValue()), StandardCharsets.UTF_8).replaceAll("\\+", "%20")));
    }

    // add `outerEnumIntegerDefaultValue` to the URL query string
    if (getOuterEnumIntegerDefaultValue() != null) {
      joiner.add(String.format("%souterEnumIntegerDefaultValue%s=%s", prefix, suffix, URLEncoder.encode(ApiClient.valueToString(getOuterEnumIntegerDefaultValue()), StandardCharsets.UTF_8).replaceAll("\\+", "%20")));
    }

    return joiner.toString();
  }
}

