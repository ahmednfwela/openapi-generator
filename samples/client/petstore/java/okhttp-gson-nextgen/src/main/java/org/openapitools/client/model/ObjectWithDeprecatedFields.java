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
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.client.model.DeprecatedObject;

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
 * ObjectWithDeprecatedFields
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen")
public class ObjectWithDeprecatedFields {
  public static final String SERIALIZED_NAME_UUID = "uuid";
  @SerializedName(SERIALIZED_NAME_UUID)
  private String uuid;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private BigDecimal id;

  public static final String SERIALIZED_NAME_DEPRECATED_REF = "deprecatedRef";
  @SerializedName(SERIALIZED_NAME_DEPRECATED_REF)
  private DeprecatedObject deprecatedRef;

  public static final String SERIALIZED_NAME_BARS = "bars";
  @SerializedName(SERIALIZED_NAME_BARS)
  private List<String> bars = null;

  public ObjectWithDeprecatedFields() { 
  }

  public ObjectWithDeprecatedFields uuid(String uuid) {
    
    this.uuid = uuid;
    return this;
  }

   /**
   * Get uuid
   * @return uuid
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getUuid() {
    return uuid;
  }


  public void setUuid(String uuid) {
    this.uuid = uuid;
  }


  public ObjectWithDeprecatedFields id(BigDecimal id) {
    
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
   * @deprecated
  **/
  @Deprecated
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public BigDecimal getId() {
    return id;
  }


  public void setId(BigDecimal id) {
    this.id = id;
  }


  public ObjectWithDeprecatedFields deprecatedRef(DeprecatedObject deprecatedRef) {
    
    this.deprecatedRef = deprecatedRef;
    return this;
  }

   /**
   * Get deprecatedRef
   * @return deprecatedRef
   * @deprecated
  **/
  @Deprecated
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public DeprecatedObject getDeprecatedRef() {
    return deprecatedRef;
  }


  public void setDeprecatedRef(DeprecatedObject deprecatedRef) {
    this.deprecatedRef = deprecatedRef;
  }


  public ObjectWithDeprecatedFields bars(List<String> bars) {
    
    this.bars = bars;
    return this;
  }

  public ObjectWithDeprecatedFields addBarsItem(String barsItem) {
    if (this.bars == null) {
      this.bars = new ArrayList<String>();
    }
    this.bars.add(barsItem);
    return this;
  }

   /**
   * Get bars
   * @return bars
   * @deprecated
  **/
  @Deprecated
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<String> getBars() {
    return bars;
  }


  public void setBars(List<String> bars) {
    this.bars = bars;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ObjectWithDeprecatedFields objectWithDeprecatedFields = (ObjectWithDeprecatedFields) o;
    return Objects.equals(this.uuid, objectWithDeprecatedFields.uuid) &&
        Objects.equals(this.id, objectWithDeprecatedFields.id) &&
        Objects.equals(this.deprecatedRef, objectWithDeprecatedFields.deprecatedRef) &&
        Objects.equals(this.bars, objectWithDeprecatedFields.bars);
  }

  @Override
  public int hashCode() {
    return Objects.hash(uuid, id, deprecatedRef, bars);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ObjectWithDeprecatedFields {\n");
    sb.append("    uuid: ").append(toIndentedString(uuid)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    deprecatedRef: ").append(toIndentedString(deprecatedRef)).append("\n");
    sb.append("    bars: ").append(toIndentedString(bars)).append("\n");
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
    openapiFields.add("uuid");
    openapiFields.add("id");
    openapiFields.add("deprecatedRef");
    openapiFields.add("bars");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ObjectWithDeprecatedFields.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ObjectWithDeprecatedFields' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ObjectWithDeprecatedFields> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ObjectWithDeprecatedFields.class));

       return (TypeAdapter<T>) new TypeAdapter<ObjectWithDeprecatedFields>() {
           @Override
           public void write(JsonWriter out, ObjectWithDeprecatedFields value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ObjectWithDeprecatedFields read(JsonReader in) throws IOException {
             JsonObject obj = elementAdapter.read(in).getAsJsonObject();
             Set<Entry<String, JsonElement>> entries = obj.entrySet();//will return members of your object
             // check to see if the JSON string contains additional fields
             for (Entry<String, JsonElement> entry: entries) {
               if (!ObjectWithDeprecatedFields.openapiFields.contains(entry.getKey())) {
                throw new IllegalArgumentException("The field `" + entry.getKey() + "` in the JSON string is not defined in the `ObjectWithDeprecatedFields` properties");
               }
             }

             return thisAdapter.fromJsonTree(obj);
           }

       }.nullSafe();
    }
  }
}
