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
    advertiseOnly: false
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
    advertiseOnly: false
};