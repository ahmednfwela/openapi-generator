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

import java.util.Objects;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Arrays;
import org.openapitools.client.model.OuterEnum;
import android.os.Parcelable;
import android.os.Parcel;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.openapitools.client.JSON;

/**
 * EnumTest
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.7.0-SNAPSHOT")
public class EnumTest implements Parcelable {
  /**
   * Gets or Sets enumString
   */
  @JsonAdapter(EnumStringEnum.Adapter.class)
  public enum EnumStringEnum {
    UPPER("UPPER"),
    
    LOWER("lower"),
    
    EMPTY("");

    private String value;

    EnumStringEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static EnumStringEnum fromValue(String value) {
      for (EnumStringEnum b : EnumStringEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<EnumStringEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final EnumStringEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public EnumStringEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return EnumStringEnum.fromValue(value);
      }
    }

    public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      String value = jsonElement.getAsString();
      EnumStringEnum.fromValue(value);
    }
  }

  public static final String SERIALIZED_NAME_ENUM_STRING = "enum_string";
  @SerializedName(SERIALIZED_NAME_ENUM_STRING)
  private EnumStringEnum enumString;

  /**
   * Gets or Sets enumStringRequired
   */
  @JsonAdapter(EnumStringRequiredEnum.Adapter.class)
  public enum EnumStringRequiredEnum {
    UPPER("UPPER"),
    
    LOWER("lower"),
    
    EMPTY("");

    private String value;

    EnumStringRequiredEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static EnumStringRequiredEnum fromValue(String value) {
      for (EnumStringRequiredEnum b : EnumStringRequiredEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<EnumStringRequiredEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final EnumStringRequiredEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public EnumStringRequiredEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return EnumStringRequiredEnum.fromValue(value);
      }
    }

    public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      String value = jsonElement.getAsString();
      EnumStringRequiredEnum.fromValue(value);
    }
  }

  public static final String SERIALIZED_NAME_ENUM_STRING_REQUIRED = "enum_string_required";
  @SerializedName(SERIALIZED_NAME_ENUM_STRING_REQUIRED)
  private EnumStringRequiredEnum enumStringRequired;

  /**
   * Gets or Sets enumInteger
   */
  @JsonAdapter(EnumIntegerEnum.Adapter.class)
  public enum EnumIntegerEnum {
    NUMBER_1(1),
    
    NUMBER_MINUS_1(-1);

    private Integer value;

    EnumIntegerEnum(Integer value) {
      this.value = value;
    }

    public Integer getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static EnumIntegerEnum fromValue(Integer value) {
      for (EnumIntegerEnum b : EnumIntegerEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<EnumIntegerEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final EnumIntegerEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public EnumIntegerEnum read(final JsonReader jsonReader) throws IOException {
        Integer value =  jsonReader.nextInt();
        return EnumIntegerEnum.fromValue(value);
      }
    }

    public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      Integer value = jsonElement.getAsInt();
      EnumIntegerEnum.fromValue(value);
    }
  }

  public static final String SERIALIZED_NAME_ENUM_INTEGER = "enum_integer";
  @SerializedName(SERIALIZED_NAME_ENUM_INTEGER)
  private EnumIntegerEnum enumInteger;

  /**
   * Gets or Sets enumNumber
   */
  @JsonAdapter(EnumNumberEnum.Adapter.class)
  public enum EnumNumberEnum {
    NUMBER_1_DOT_1(1.1),
    
    NUMBER_MINUS_1_DOT_2(-1.2);

    private Double value;

    EnumNumberEnum(Double value) {
      this.value = value;
    }

    public Double getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static EnumNumberEnum fromValue(Double value) {
      for (EnumNumberEnum b : EnumNumberEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<EnumNumberEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final EnumNumberEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public EnumNumberEnum read(final JsonReader jsonReader) throws IOException {
        Double value =  jsonReader.nextDouble();
        return EnumNumberEnum.fromValue(value);
      }
    }

    public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      Double value = jsonElement.getAsDouble();
      EnumNumberEnum.fromValue(value);
    }
  }

  public static final String SERIALIZED_NAME_ENUM_NUMBER = "enum_number";
  @SerializedName(SERIALIZED_NAME_ENUM_NUMBER)
  private EnumNumberEnum enumNumber;

  public static final String SERIALIZED_NAME_OUTER_ENUM = "outerEnum";
  @SerializedName(SERIALIZED_NAME_OUTER_ENUM)
  private OuterEnum outerEnum;

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
  public EnumStringEnum getEnumString() {
    return enumString;
  }

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
  public EnumStringRequiredEnum getEnumStringRequired() {
    return enumStringRequired;
  }

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
  public EnumIntegerEnum getEnumInteger() {
    return enumInteger;
  }

  public void setEnumInteger(EnumIntegerEnum enumInteger) {
    this.enumInteger = enumInteger;
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
  public EnumNumberEnum getEnumNumber() {
    return enumNumber;
  }

  public void setEnumNumber(EnumNumberEnum enumNumber) {
    this.enumNumber = enumNumber;
  }


  public EnumTest outerEnum(OuterEnum outerEnum) {
    this.outerEnum = outerEnum;
    return this;
  }

  /**
   * Get outerEnum
   * @return outerEnum
   */
  @javax.annotation.Nullable
  public OuterEnum getOuterEnum() {
    return outerEnum;
  }

  public void setOuterEnum(OuterEnum outerEnum) {
    this.outerEnum = outerEnum;
  }



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
        Objects.equals(this.enumNumber, enumTest.enumNumber) &&
        Objects.equals(this.outerEnum, enumTest.outerEnum);
  }

  @Override
  public int hashCode() {
    return Objects.hash(enumString, enumStringRequired, enumInteger, enumNumber, outerEnum);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class EnumTest {\n");
    sb.append("    enumString: ").append(toIndentedString(enumString)).append("\n");
    sb.append("    enumStringRequired: ").append(toIndentedString(enumStringRequired)).append("\n");
    sb.append("    enumInteger: ").append(toIndentedString(enumInteger)).append("\n");
    sb.append("    enumNumber: ").append(toIndentedString(enumNumber)).append("\n");
    sb.append("    outerEnum: ").append(toIndentedString(outerEnum)).append("\n");
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


  public void writeToParcel(Parcel out, int flags) {
    out.writeValue(enumString);
    out.writeValue(enumStringRequired);
    out.writeValue(enumInteger);
    out.writeValue(enumNumber);
    out.writeValue(outerEnum);
  }

  EnumTest(Parcel in) {
    enumString = (EnumStringEnum)in.readValue(null);
    enumStringRequired = (EnumStringRequiredEnum)in.readValue(null);
    enumInteger = (EnumIntegerEnum)in.readValue(null);
    enumNumber = (EnumNumberEnum)in.readValue(null);
    outerEnum = (OuterEnum)in.readValue(OuterEnum.class.getClassLoader());
  }

  public int describeContents() {
    return 0;
  }

  public static final Parcelable.Creator<EnumTest> CREATOR = new Parcelable.Creator<EnumTest>() {
    public EnumTest createFromParcel(Parcel in) {
      return new EnumTest(in);
    }
    public EnumTest[] newArray(int size) {
      return new EnumTest[size];
    }
  };

  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("enum_string");
    openapiFields.add("enum_string_required");
    openapiFields.add("enum_integer");
    openapiFields.add("enum_number");
    openapiFields.add("outerEnum");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("enum_string_required");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to EnumTest
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!EnumTest.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in EnumTest is not found in the empty JSON string", EnumTest.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!EnumTest.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `EnumTest` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : EnumTest.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("enum_string") != null && !jsonObj.get("enum_string").isJsonNull()) && !jsonObj.get("enum_string").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `enum_string` to be a primitive type in the JSON string but got `%s`", jsonObj.get("enum_string").toString()));
      }
      // validate the optional field `enum_string`
      if (jsonObj.get("enum_string") != null && !jsonObj.get("enum_string").isJsonNull()) {
        EnumStringEnum.validateJsonElement(jsonObj.get("enum_string"));
      }
      if (!jsonObj.get("enum_string_required").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `enum_string_required` to be a primitive type in the JSON string but got `%s`", jsonObj.get("enum_string_required").toString()));
      }
      // validate the required field `enum_string_required`
      EnumStringRequiredEnum.validateJsonElement(jsonObj.get("enum_string_required"));
      // validate the optional field `enum_integer`
      if (jsonObj.get("enum_integer") != null && !jsonObj.get("enum_integer").isJsonNull()) {
        EnumIntegerEnum.validateJsonElement(jsonObj.get("enum_integer"));
      }
      // validate the optional field `enum_number`
      if (jsonObj.get("enum_number") != null && !jsonObj.get("enum_number").isJsonNull()) {
        EnumNumberEnum.validateJsonElement(jsonObj.get("enum_number"));
      }
      // validate the optional field `outerEnum`
      if (jsonObj.get("outerEnum") != null && !jsonObj.get("outerEnum").isJsonNull()) {
        OuterEnum.validateJsonElement(jsonObj.get("outerEnum"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!EnumTest.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'EnumTest' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<EnumTest> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(EnumTest.class));

       return (TypeAdapter<T>) new TypeAdapter<EnumTest>() {
           @Override
           public void write(JsonWriter out, EnumTest value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public EnumTest read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of EnumTest given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of EnumTest
   * @throws IOException if the JSON string is invalid with respect to EnumTest
   */
  public static EnumTest fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, EnumTest.class);
  }

  /**
   * Convert an instance of EnumTest to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

