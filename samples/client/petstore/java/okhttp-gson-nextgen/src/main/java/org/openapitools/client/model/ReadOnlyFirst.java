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
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/**
 * ReadOnlyFirst
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen")
public class ReadOnlyFirst {
  public static final String SERIALIZED_NAME_BAR = "bar";
  @SerializedName(SERIALIZED_NAME_BAR)
  private String bar;

  public static final String SERIALIZED_NAME_BAZ = "baz";
  @SerializedName(SERIALIZED_NAME_BAZ)
  private String baz;

  public ReadOnlyFirst() { 
  }

  
  public ReadOnlyFirst(
     String bar
  ) {
    this();
    this.bar = bar;
  }

   /**
   * Get bar
   * @return bar
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getBar() {
    return bar;
  }




  public ReadOnlyFirst baz(String baz) {
    
    this.baz = baz;
    return this;
  }

   /**
   * Get baz
   * @return baz
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getBaz() {
    return baz;
  }


  public void setBaz(String baz) {
    this.baz = baz;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ReadOnlyFirst readOnlyFirst = (ReadOnlyFirst) o;
    return Objects.equals(this.bar, readOnlyFirst.bar) &&
        Objects.equals(this.baz, readOnlyFirst.baz);
  }

  @Override
  public int hashCode() {
    return Objects.hash(bar, baz);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ReadOnlyFirst {\n");
    sb.append("    bar: ").append(toIndentedString(bar)).append("\n");
    sb.append("    baz: ").append(toIndentedString(baz)).append("\n");
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

  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("bar");
    openapiFields.add("baz");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ReadOnlyFirst.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ReadOnlyFirst' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ReadOnlyFirst> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ReadOnlyFirst.class));

       return (TypeAdapter<T>) new TypeAdapter<ReadOnlyFirst>() {
           @Override
           public void write(JsonWriter out, ReadOnlyFirst value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ReadOnlyFirst read(JsonReader in) throws IOException {
             JsonObject obj = elementAdapter.read(in).getAsJsonObject();
             Set<Entry<String, JsonElement>> entries = obj.entrySet();//will return members of your object
             // check to see if the JSON string contains additional fields
             for (Entry<String, JsonElement> entry: entries) {
               if (!ReadOnlyFirst.openapiFields.contains(entry.getKey())) {
                throw new IllegalArgumentException("The field `" + entry.getKey() + "` in the JSON string is not defined in the `ReadOnlyFirst` properties");
               }
             }

             return thisAdapter.fromJsonTree(obj);
           }

       }.nullSafe();
    }
  }
}
