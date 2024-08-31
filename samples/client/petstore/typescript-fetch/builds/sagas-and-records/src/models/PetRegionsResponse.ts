/* tslint:disable */
/* eslint-disable */
/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { mapValues } from '../runtime';
import type { ResponseMeta } from './ResponseMeta';
import {
    ResponseMetaFromJSON,
    ResponseMetaFromJSONTyped,
    ResponseMetaToJSON,
} from './ResponseMeta';

/**
 * 
 * @export
 * @interface PetRegionsResponse
 */
export interface PetRegionsResponse {
    /**
     * 
     * @type {ResponseMeta}
     * @memberof PetRegionsResponse
     */
    meta: ResponseMeta;
    /**
     * An array of all 15-minute time slots in 24 hours.
     * @type {Array<Array<number | null>>}
     * @memberof PetRegionsResponse
     */
    data?: Array<Array<number | null>>;
}

/**
 * Check if a given object implements the PetRegionsResponse interface.
 */
export function instanceOfPetRegionsResponse(value: object): value is PetRegionsResponse {
    if (!('meta' in value) || value['meta'] === undefined) return false;
    return true;
}

export function PetRegionsResponseFromJSON(json: any): PetRegionsResponse {
    return PetRegionsResponseFromJSONTyped(json, false);
}

export function PetRegionsResponseFromJSONTyped(json: any, ignoreDiscriminator: boolean): PetRegionsResponse {
    if (json == null) {
        return json;
    }
    return {
        
        'meta': ResponseMetaFromJSON(json['meta']),
        'data': json['data'] == null ? undefined : json['data'],
    };
}

export function PetRegionsResponseToJSON(value?: PetRegionsResponse | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'meta': ResponseMetaToJSON(value['meta']),
        'data': value['data'],
    };
}

