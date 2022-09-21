API constApi = {
    "name": "PetApiSample_OAS3_YAML",
    "description": "Petstore",
    "context": "/petv3333",
    "version": "1.0.0",
    "provider": "admin",
    "status": "CREATED",
    "thumbnailUri": null,
    "apiDefinition": "{\"openapi\":\"3.0.0\",\"info\":{\"version\":\"1.0.0\",\"title\":\"PetApiSample_OAS3_YAML\"},\"servers\":[{\"url\":\"http://petstore.swagger.io/v1\"}],\"x-wso2-basePath\":\"/contextYamlV3\",\"paths\":{\"/pets\":{\"post\":{\"summary\":\"Create a pet\",\"operationId\":\"createPets\",\"tags\":[\"pets\"],\"responses\":{\"201\":{\"description\":\"Null response\"},\"default\":{\"description\":\"unexpected error\",\"content\":{\"application/json\":{\"schema\":{\"$ref\":\"#/components/schemas/Error\"}}}}},\"x-auth-type\":\"Application & Application User\",\"x-throttling-tier\":\"Unlimited\"}},\"/pets/{petId}\":{\"get\":{\"summary\":\"Info for a specific pet\",\"operationId\":\"showPetById\",\"tags\":[\"pets\"],\"parameters\":[{\"name\":\"petId\",\"in\":\"path\",\"required\":true,\"description\":\"The id of the pet to retrieve\",\"schema\":{\"type\":\"string\"}}],\"responses\":{\"200\":{\"description\":\"Expected response to a valid request\",\"content\":{\"application/json\":{\"schema\":{\"$ref\":\"#/components/schemas/Pets\"}}}},\"default\":{\"description\":\"unexpected error\",\"content\":{\"application/json\":{\"schema\":{\"$ref\":\"#/components/schemas/Error\"}}}}},\"x-auth-type\":\"Application & Application User\",\"x-throttling-tier\":\"Unlimited\"}}},\"components\":{\"schemas\":{\"Pet\":{\"required\":[\"id\",\"name\"],\"properties\":{\"id\":{\"type\":\"integer\",\"format\":\"int64\"},\"name\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}},\"Pets\":{\"type\":\"array\",\"items\":{\"$ref\":\"#/components/schemas/Pet\"}},\"Error\":{\"required\":[\"code\",\"message\"],\"properties\":{\"code\":{\"type\":\"integer\",\"format\":\"int32\"},\"message\":{\"type\":\"string\"}}}}}}",
    "wsdlUri": null,
    "responseCaching": "Disabled",
    "cacheTimeout": 300,
    "destinationStatsEnabled": null,
    "isDefaultVersion": false,
    "type": "HTTP",
    "transport": [
        "http"
    ],
    "tags": [],
    "tiers": [
        "Unlimited",
        "Gold",
        "Silver"
    ],
    "apiLevelPolicy": null,
    "apiSecurity": "oauth2",
    "visibility": "PUBLIC",
    "visibleRoles": [],
    "visibleTenants": [],
    "endpointConfig": {
        "production_endpoints":{"url":"http://google.com","config":null,"template_not_supported":false},"sandbox_endpoints":{"url":"http://google.lk","config":null,"template_not_supported":false},"endpoint_type":"http"
        },
    "endpointSecurity": null,
    "gatewayEnvironments": "Production and Sandbox",
    "labels": [],
    "sequences": [],
    "subscriptionAvailableTenants": [],
    "accessControl": "NONE",
    "accessControlRoles": [],
    "businessInformation": {
        "businessOwner": "Jon",
        "businessOwnerEmail": "jon@wso2.com",
        "technicalOwner": "John",
        "technicalOwnerEmail": "john@wso2.com"
    },
    "corsConfiguration": {
        "corsConfigurationEnabled": false,
        "accessControlAllowOrigins": [
            "*"
        ],
        "accessControlAllowCredentials": false,
        "accessControlAllowHeaders": [
            "authorization",
            "Access-Control-Allow-Origin",
            "Content-Type",
            "SOAPAction"
        ],
        "accessControlAllowMethods": [
            "GET",
            "PUT",
            "POST",
            "DELETE",
            "PATCH",
            "OPTIONS"
        ]
    }
};

APIInfo info1 = {
    name: "API1",
    context: "api1",
    'version: "1.0.0",
    description: "API 1 desc",
    provider: "admin",
    lifeCycleStatus: "CREATED",
    'type: "HTTP",
    gatewayVendor: "wso2",
    advertiseOnly: false,
    additionalProperties: [],
    additionalPropertiesMap: {},
    audience: "",
    createdTime: "1663740126170",
    hasThumbnail: false,
    securityScheme: [],
    updatedTime: "1663740130291",
    workflowStatus: ""
};

APIInfo info2 = {
    name: "API2",
    context: "api2",
    'version: "v1",
    description: "API 2 desc",
    provider: "admin",
    lifeCycleStatus: "CREATED",
    'type: "HTTP",
    gatewayVendor: "wso2",
    advertiseOnly: false,
    additionalProperties: [],
    additionalPropertiesMap: {},
    audience: "",
    createdTime: "1663740126170",
    hasThumbnail: false,
    securityScheme: [],
    updatedTime: "1663740130291",
    workflowStatus: ""
};

any sampleSwagger = {
  "openapi": "3.0.3",
  "info": {
    "version": "1.0.0",
    "title": "PetApiSample_OAS3_YAML"
  },
  "servers": [
    {
      "url": "http://petstore.swagger.io/v1"
    }
  ],
  "x-wso2-basePath": "/contextYamlV3",
  "paths": {
    "/pets": {
      "post": {
        "summary": "Create a pet",
        "operationId": "createPets",
        "tags": [
          "pets"
        ],
        "responses": {
          "201": {
            "description": "null response"
          },
          "default": {
            "description": "unexpected error",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/Error"
                }
              }
            }
          }
        }
      }
    },
    "/pets/{petId}": {
      "get": {
        "summary": "Info for a specific pet",
        "operationId": "showPetById",
        "tags": [
          "pets"
        ],
        "parameters": [
          {
            "name": "petId",
            "in": "path",
            "required": true,
            "description": "The id of the pet to retrieve",
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Expected response to a valid request",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/Pets"
                }
              }
            }
          },
          "default": {
            "description": "unexpected error",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/Error"
                }
              }
            }
          }
        }
      }
    }
  },
  "components": {
    "schemas": {
      "Pet": {
        "required": [
          "id",
          "name"
        ],
        "properties": {
          "id": {
            "type": "integer",
            "format": "int64"
          },
          "name": {
            "type": "string"
          },
          "tag": {
            "type": "string"
          }
        }
      },
      "Pets": {
        "type": "array",
        "items": {
          "$ref": "#/components/schemas/Pet"
        }
      },
      "Error": {
        "required": [
          "code",
          "message"
        ],
        "properties": {
          "code": {
            "type": "integer",
            "format": "int32"
          },
          "message": {
            "type": "string"
          }
        }
      }
    }
  }
};

ThrottlingPolicyList policies = {
    "count": 4,
    "list": [
        {
            "name": "Bronze",
            "description": "Allows 1000 requests per minute",
            "policyLevel": "SUBSCRIPTION",
            "displayName": "Bronze",
            "attributes": {},
            "requestCount": 1000,
            "dataUnit": "",
            "unitTime": 1,
            "timeUnit": "min",
            "rateLimitCount": 0,
            "rateLimitTimeUnit": "",
            "quotaPolicyType": "REQUESTCOUNT",
            "tierPlan": "FREE",
            "stopOnQuotaReach": true,
            "monetizationProperties": {}
        },
        {
            "name": "Gold",
            "description": "Allows 5000 requests per minute",
            "policyLevel": "SUBSCRIPTION",
            "displayName": "Gold",
            "attributes": {},
            "requestCount": 5000,
            "dataUnit": "",
            "unitTime": 1,
            "timeUnit": "min",
            "rateLimitCount": 0,
            "rateLimitTimeUnit":"",
            "quotaPolicyType": "REQUESTCOUNT",
            "tierPlan": "FREE",
            "stopOnQuotaReach": true,
            "monetizationProperties": {}
        },
        {
            "name": "Silver",
            "description": "Allows 2000 requests per minute",
            "policyLevel": "SUBSCRIPTION",
            "displayName": "Silver",
            "attributes": {},
            "requestCount": 2000,
            "dataUnit": "",
            "unitTime": 1,
            "timeUnit": "min",
            "rateLimitCount": 0,
            "rateLimitTimeUnit": "",
            "quotaPolicyType": "REQUESTCOUNT",
            "tierPlan": "FREE",
            "stopOnQuotaReach": true,
            "monetizationProperties": {}
        },
        {
            "name": "Unlimited",
            "description": "Allows unlimited requests",
            "policyLevel": "SUBSCRIPTION",
            "displayName": "Unlimited",
            "attributes": {},
            "requestCount": 2147483647,
            "dataUnit": "",
            "unitTime": 0,
            "timeUnit": "ms",
            "rateLimitCount": 0,
            "rateLimitTimeUnit": "",
            "quotaPolicyType": "",
            "tierPlan": "FREE",
            "stopOnQuotaReach": true,
            "monetizationProperties": {}
        }
    ],
    "pagination": {
        "offset": 0,
        "limit": 25,
        "total": 4,
        "next": "",
        "previous": ""
    }
};

API createdAPI = {
    "id": "7012a4de-f46b-44c2-84a8-ef60d48b0091",
    "name": "testapi",
    "description": "",
    "context": "/tapi",
    "version": "1.0",
    "provider": "admin",
    "lifeCycleStatus": "CREATED",
    "wsdlUrl": "",
    "responseCachingEnabled": false,
    "cacheTimeout": 300,
    "hasThumbnail": false,
    "isDefaultVersion": false,
    "isRevision": false,
    "revisionedApiId": "",
    "revisionId": 0,
    "enableSchemaValidation": false,
    "type": "HTTP",
    "audience": "",
    "transport": [
        "http",
        "https"
    ],
    "tags": [],
    "policies": [
        "Unlimited"
    ],
    "apiThrottlingPolicy": "",
    "authorizationHeader": "Authorization",
    "securityScheme": [
        "oauth2",
        "oauth_basic_auth_api_key_mandatory"
    ],
    "visibility": "PUBLIC",
    "visibleRoles": [
        ""
    ],
    "visibleTenants": [],
    "mediationPolicies": [],
    "subscriptionAvailability": "CURRENT_TENANT",
    "subscriptionAvailableTenants": [
        ""
    ],
    "additionalProperties": [],
    "additionalPropertiesMap": {},
    "accessControl": "NONE",
    "accessControlRoles": [],
    "businessInformation": {
        "businessOwner": "",
        "businessOwnerEmail": "",
        "technicalOwner": "",
        "technicalOwnerEmail": ""
    },
    "corsConfiguration": {
        "corsConfigurationEnabled": false,
        "accessControlAllowOrigins": [
            "*"
        ],
        "accessControlAllowCredentials": false,
        "accessControlAllowHeaders": [
            "authorization",
            "Access-Control-Allow-Origin",
            "Content-Type",
            "SOAPAction",
            "apikey",
            "Internal-Key"
        ],
        "accessControlAllowMethods": [
            "GET",
            "PUT",
            "POST",
            "DELETE",
            "PATCH",
            "OPTIONS"
        ]
    },
    "websubSubscriptionConfiguration": {
        "enable": false,
        "secret": "",
        "signingAlgorithm": "SHA1",
        "signatureHeader": "x-hub-signature"
    },
    "workflowStatus": "",
    "createdTime": "1663741491101",
    "lastUpdatedTime": "",
    "endpointConfig": {
        "endpoint_type": "http",
        "sandbox_endpoints": {
            "url": "http://google.lk"
        },
        "production_endpoints": {
            "url": "http://google.lk"
        }
    },
    "endpointImplementationType": "ENDPOINT",
    "scopes": [],
    "operations": [
        {
            "id": "",
            "target": "/*",
            "verb": "GET",
            "authType": "Application & Application User",
            "throttlingPolicy": "Unlimited",
            "scopes": [],
            "usedProductIds": [],
            "amznResourceName": "",
            "payloadSchema": "",
            "uriMapping": "",
            "operationPolicies": {
                "request": [],
                "response": [],
                "fault": []
            }
        },
        {
            "id": "",
            "target": "/*",
            "verb": "PUT",
            "authType": "Application & Application User",
            "throttlingPolicy": "Unlimited",
            "scopes": [],
            "usedProductIds": [],
            "amznResourceName": "",
            "payloadSchema": "",
            "uriMapping": "",
            "operationPolicies": {
                "request": [],
                "response": [],
                "fault": []
            }
        },
        {
            "id": "",
            "target": "/*",
            "verb": "POST",
            "authType": "Application & Application User",
            "throttlingPolicy": "Unlimited",
            "scopes": [],
            "usedProductIds": [],
            "amznResourceName": "",
            "payloadSchema": "",
            "uriMapping": "",
            "operationPolicies": {
                "request": [],
                "response": [],
                "fault": []
            }
        },
        {
            "id": "",
            "target": "/*",
            "verb": "DELETE",
            "authType": "Application & Application User",
            "throttlingPolicy": "Unlimited",
            "scopes": [],
            "usedProductIds": [],
            "amznResourceName": "",
            "payloadSchema": "",
            "uriMapping": "",
            "operationPolicies": {
                "request": [],
                "response": [],
                "fault": []
            }
        },
        {
            "id": "",
            "target": "/*",
            "verb": "PATCH",
            "authType": "Application & Application User",
            "throttlingPolicy": "Unlimited",
            "scopes": [],
            "usedProductIds": [],
            "amznResourceName": "",
            "payloadSchema": "",
            "uriMapping": "",
            "operationPolicies": {
                "request": [],
                "response": [],
                "fault": []
            }
        }
    ],
    "categories": [],
    "keyManagers": {"0": "all"},
    "advertiseInfo": {
        "advertised": false,
        "apiExternalProductionEndpoint": "",
        "apiExternalSandboxEndpoint": "",
        "originalDevPortalUrl": "",
        "apiOwner": "admin",
        "vendor": "WSO2"
    },
    "gatewayVendor": "wso2",
    "gatewayType": "",
    "asyncTransportProtocols": [
        ""
    ]
};