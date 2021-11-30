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
import org.openapitools.client.model.Pig;
import org.openapitools.client.model.Whale;
import org.openapitools.client.model.Zebra;

import javax.ws.rs.core.GenericType;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.JsonPrimitive;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;

import org.openapitools.client.JSON;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen")
public class Mammal extends AbstractOpenApiSchema {
    private static final Logger log = Logger.getLogger(Mammal.class.getName());

    public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
        @SuppressWarnings("unchecked")
        @Override
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
            if (!Mammal.class.isAssignableFrom(type.getRawType())) {
                return null; // this class only serializes 'Mammal' and its subtypes
            }
            final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
            final TypeAdapter<Pig> adapterPig = gson.getDelegateAdapter(this, TypeToken.get(Pig.class));
            final TypeAdapter<Whale> adapterWhale = gson.getDelegateAdapter(this, TypeToken.get(Whale.class));
            final TypeAdapter<Zebra> adapterZebra = gson.getDelegateAdapter(this, TypeToken.get(Zebra.class));

            return (TypeAdapter<T>) new TypeAdapter<Mammal>() {
                @Override
                public void write(JsonWriter out, Mammal value) throws IOException {
                    // check if the actual instance is of the type `Pig`
                    if (value.getActualInstance() instanceof Pig) {
                        JsonObject obj = adapterPig.toJsonTree((Pig)value.getActualInstance()).getAsJsonObject();
                        elementAdapter.write(out, obj);
                    }

                    // check if the actual instance is of the type `Whale`
                    if (value.getActualInstance() instanceof Whale) {
                        JsonObject obj = adapterWhale.toJsonTree((Whale)value.getActualInstance()).getAsJsonObject();
                        elementAdapter.write(out, obj);
                    }

                    // check if the actual instance is of the type `Zebra`
                    if (value.getActualInstance() instanceof Zebra) {
                        JsonObject obj = adapterZebra.toJsonTree((Zebra)value.getActualInstance()).getAsJsonObject();
                        elementAdapter.write(out, obj);
                    }

                    throw new IOException("Failed to deserialize as the type doesn't match oneOf schemas: Pig, Whale, Zebra");
                }

                @Override
                public Mammal read(JsonReader in) throws IOException {
                    Object deserialized = null;
                    JsonObject jsonObject = elementAdapter.read(in).getAsJsonObject();

                    int match = 0;

                    // deserialize Pig
                    try {
                        deserialized = adapterPig.fromJsonTree(jsonObject);
                        match++;
                        log.log(Level.FINER, "Input data matches schema 'Pig'");
                    } catch (Exception e) {
                        // deserialization failed, continue
                        log.log(Level.FINER, "Input data does not match schema 'Pig'", e);
                    }

                    // deserialize Whale
                    try {
                        deserialized = adapterWhale.fromJsonTree(jsonObject);
                        match++;
                        log.log(Level.FINER, "Input data matches schema 'Whale'");
                    } catch (Exception e) {
                        // deserialization failed, continue
                        log.log(Level.FINER, "Input data does not match schema 'Whale'", e);
                    }

                    // deserialize Zebra
                    try {
                        deserialized = adapterZebra.fromJsonTree(jsonObject);
                        match++;
                        log.log(Level.FINER, "Input data matches schema 'Zebra'");
                    } catch (Exception e) {
                        // deserialization failed, continue
                        log.log(Level.FINER, "Input data does not match schema 'Zebra'", e);
                    }

                    if (match == 1) {
                        Mammal ret = new Mammal();
                        ret.setActualInstance(deserialized);
                        return ret;
                    }

                    throw new IOException(String.format("Failed deserialization for Mammal: %d classes match result, expected 1", match));
                }
            }.nullSafe();
        }
    }

    // store a list of schema names defined in oneOf
    public static final Map<String, GenericType> schemas = new HashMap<String, GenericType>();

    public Mammal() {
        super("oneOf", Boolean.FALSE);
    }

    public Mammal(Pig o) {
        super("oneOf", Boolean.FALSE);
        setActualInstance(o);
    }

    public Mammal(Whale o) {
        super("oneOf", Boolean.FALSE);
        setActualInstance(o);
    }

    public Mammal(Zebra o) {
        super("oneOf", Boolean.FALSE);
        setActualInstance(o);
    }

    static {
        schemas.put("Pig", new GenericType<Pig>() {
        });
        schemas.put("Whale", new GenericType<Whale>() {
        });
        schemas.put("Zebra", new GenericType<Zebra>() {
        });
    }

    @Override
    public Map<String, GenericType> getSchemas() {
        return Mammal.schemas;
    }

    /**
     * Set the instance that matches the oneOf child schema, check
     * the instance parameter is valid against the oneOf child schemas:
     * Pig, Whale, Zebra
     *
     * It could be an instance of the 'oneOf' schemas.
     * The oneOf child schemas may themselves be a composed schema (allOf, anyOf, oneOf).
     */
    @Override
    public void setActualInstance(Object instance) {
        if (instance instanceof Pig) {
            super.setActualInstance(instance);
            return;
        }

        if (instance instanceof Whale) {
            super.setActualInstance(instance);
            return;
        }

        if (instance instanceof Zebra) {
            super.setActualInstance(instance);
            return;
        }

        throw new RuntimeException("Invalid instance type. Must be Pig, Whale, Zebra");
    }

    /**
     * Get the actual instance, which can be the following:
     * Pig, Whale, Zebra
     *
     * @return The actual instance (Pig, Whale, Zebra)
     */
    @Override
    public Object getActualInstance() {
        return super.getActualInstance();
    }

    /**
     * Get the actual instance of `Pig`. If the actual instance is not `Pig`,
     * the ClassCastException will be thrown.
     *
     * @return The actual instance of `Pig`
     * @throws ClassCastException if the instance is not `Pig`
     */
    public Pig getPig() throws ClassCastException {
        return (Pig)super.getActualInstance();
    }

    /**
     * Get the actual instance of `Whale`. If the actual instance is not `Whale`,
     * the ClassCastException will be thrown.
     *
     * @return The actual instance of `Whale`
     * @throws ClassCastException if the instance is not `Whale`
     */
    public Whale getWhale() throws ClassCastException {
        return (Whale)super.getActualInstance();
    }

    /**
     * Get the actual instance of `Zebra`. If the actual instance is not `Zebra`,
     * the ClassCastException will be thrown.
     *
     * @return The actual instance of `Zebra`
     * @throws ClassCastException if the instance is not `Zebra`
     */
    public Zebra getZebra() throws ClassCastException {
        return (Zebra)super.getActualInstance();
    }

}

