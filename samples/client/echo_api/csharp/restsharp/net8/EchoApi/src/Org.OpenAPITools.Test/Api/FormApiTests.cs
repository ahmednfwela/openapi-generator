/*
 * Echo Server API
 *
 * Echo Server API
 *
 * The version of the OpenAPI document: 0.1.0
 * Contact: team@openapitools.org
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using Org.OpenAPITools.Client;
using Org.OpenAPITools.Api;
// uncomment below to import models
//using Org.OpenAPITools.Model;

namespace Org.OpenAPITools.Test.Api
{
    /// <summary>
    ///  Class for testing FormApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class FormApiTests : IDisposable
    {
        private FormApi instance;

        public FormApiTests()
        {
            instance = new FormApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of FormApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' FormApi
            //Assert.IsType<FormApi>(instance);
        }

        /// <summary>
        /// Test TestFormIntegerBooleanString
        /// </summary>
        [Fact]
        public void TestFormIntegerBooleanStringTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? integerForm = null;
            //bool? booleanForm = null;
            //string? stringForm = null;
            //var response = instance.TestFormIntegerBooleanString(integerForm, booleanForm, stringForm);
            //Assert.IsType<string>(response);
        }

        /// <summary>
        /// Test TestFormObjectMultipart
        /// </summary>
        [Fact]
        public void TestFormObjectMultipartTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //TestFormObjectMultipartRequestMarker marker = null;
            //var response = instance.TestFormObjectMultipart(marker);
            //Assert.IsType<string>(response);
        }

        /// <summary>
        /// Test TestFormOneof
        /// </summary>
        [Fact]
        public void TestFormOneofTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? form1 = null;
            //int? form2 = null;
            //string? form3 = null;
            //bool? form4 = null;
            //long? id = null;
            //string? name = null;
            //var response = instance.TestFormOneof(form1, form2, form3, form4, id, name);
            //Assert.IsType<string>(response);
        }
    }
}
