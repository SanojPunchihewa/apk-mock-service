APIList apiList = {
  "count": 2,
  "list": [
    {
      "id": "01234567-0123-0123-0123-012345678901",
      "name": "CalculatorAPI",
      "description": "A calculator API that supports basic operations",
      "context": "/CalculatorAPI",
      "version": "1.0.0",
      "type": "HTTP",
      "provider": "admin",
      "lifeCycleStatus": "PUBLISHED",
      "thumbnailUri": "/apis/01234567-0123-0123-0123-012345678901/thumbnail",
      "avgRating": "4.3",
      "throttlingPolicies": [
        "Unlimited"
      ],
      "advertiseInfo": {
        "advertised": false,
        "apiExternalProductionEndpoint": "null,",
        "apiExternalSandboxEndpoint": "null,",
        "originalDevPortalUrl": "null,",
        "apiOwner": "admin"
      },
      "businessInformation": {
        "businessOwner": "Jane Roe",
        "businessOwnerEmail": "businessowner@wso2.com",
        "technicalOwner": "John Doe",
        "technicalOwnerEmail": "technicalowner@wso2.com"
      },
      "isSubscriptionAvailable": true,
      "monetizationLabel": ""
    },
    {
      "id": "01123567-1233-5453-0212-12353678901",
      "name": "PizzaShackAPI",
      "description": "A Pizza ordering API",
      "context": "/PizzaShackAPI",
      "version": "1.0.0",
      "type": "HTTP",
      "provider": "admin",
      "lifeCycleStatus": "PUBLISHED",
      "thumbnailUri": "/apis/01123567-1233-5453-0212-12353678901/thumbnail",
      "avgRating": "4.3",
      "throttlingPolicies": [
        "Unlimited"
      ],
      "advertiseInfo": {
        "advertised": false,
        "apiExternalProductionEndpoint": "null,",
        "apiExternalSandboxEndpoint": "null,",
        "originalDevPortalUrl": "null,",
        "apiOwner": "admin"
      },
      "businessInformation": {
        "businessOwner": "Jane Roe",
        "businessOwnerEmail": "businessowner@wso2.com",
        "technicalOwner": "John Doe",
        "technicalOwnerEmail": "technicalowner@wso2.com"
      },
      "isSubscriptionAvailable": true,
      "monetizationLabel": ""
    }
  ],
  "pagination": {
    "offset": 0,
    "limit": 2,
    "total": 10
  }
};

API getApi = {
  "id": "01234567-0123-0123-0123-012345678901",
  "name": "CalculatorAPI",
  "description": "A calculator API that supports basic operations",
  "context": "CalculatorAPI",
  "version": "1.0.0",
  "provider": "admin",
  "apiDefinition": "{\"paths\":{\"\\/substract\":{\"get\":{\"x-auth-type\":\"Application & Application User\",\"x-throttling-tier\":\"Unlimited\",\"parameters\":[{\"name\":\"x\",\"required\":true,\"type\":\"string\",\"in\":\"query\"},{\"name\":\"y\",\"required\":true,\"type\":\"string\",\"in\":\"query\"}],\"responses\":{\"200\":{}}}},\"\\/add\":{\"get\":{\"x-auth-type\":\"Application & Application User\",\"x-throttling-tier\":\"Unlimited\",\"parameters\":[{\"name\":\"x\",\"required\":true,\"type\":\"string\",\"in\":\"query\"},{\"name\":\"y\",\"required\":true,\"type\":\"string\",\"in\":\"query\"}],\"responses\":{\"200\":{}}}}},\"swagger\":\"2.0\",\"info\":{\"title\":\"CalculatorAPI\",\"version\":\"1.0.0\"}}",
  "wsdlUri": "http://www.webservicex.com/globalweather.asmx?wsdl",
  "lifeCycleStatus": "PUBLISHED",
  "isDefaultVersion": false,
  "type": "HTTP",
  "transport": [
    "http",
    "https"
  ],
  "operations": [],
  "authorizationHeader": "Authorization",
  "securityScheme": [
    "oauth2",
    "oauth_basic_auth_api_key_mandatory"
  ],
  "tags": [
    "substract",
    "add"
  ],
  "tiers": [
    {
      "tierName": "Gold",
      "tierPlan": "COMMERCIAL",
      "monetizationAttributes": {
        "fixedPrice": "10",
        "pricePerRequest": "1",
        "currencyType": "USD",
        "billingCycle": "month"
      }
    }
  ],
  "hasThumbnail": true,
  "additionalProperties": [],
  "monetization": {
    "enabled": true
  },
  "endpointURLs": [
    {
      "environmentName": "Default",
      "environmentDisplayName": "Default",
      "environmentType": "hybrid",
      "URLs": {
        "http": "http://localhost:8280/phoneverify/1.0.0",
        "https": "https://localhost:8243/phoneverify/1.0.0",
        "ws": "ws://localhost:9099/phoneverify/1.0.0",
        "wss": "wss://localhost:9099/phoneverify/1.0.0"
      },
      "defaultVersionURLs": {
        "http": "http://localhost:8280/phoneverify/",
        "https": "https://localhost:8243/phoneverify/",
        "ws": "ws://localhost:9099/phoneverify/",
        "wss": "wss://localhost:9099/phoneverify/"
      }
    }
  ],
  "businessInformation": {
    "businessOwner": "businessowner",
    "businessOwnerEmail": "businessowner@wso2.com",
    "technicalOwner": "technicalowner",
    "technicalOwnerEmail": "technicalowner@wso2.com"
  },
  "environmentList": [
    "PRODUCTION",
    "SANDBOX"
  ],
  "scopes": [
    {
      "key": "admin_scope",
      "name": "admin scope",
      "roles": [
        "manager",
        "developer"
      ],
      "description": "string"
    }
  ],
  "avgRating": "4.5",
  "advertiseInfo": {
    "advertised": true,
    "apiExternalProductionEndpoint": "https://localhost:9443/devportal",
    "apiExternalSandboxEndpoint": "https://localhost:9443/devportal",
    "originalDevPortalUrl": "https://localhost:9443/devportal",
    "apiOwner": "admin",
    "vendor": "WSO2"
  },
  "isSubscriptionAvailable": false,
  "categories": [
    "Marketing"
  ],
  "keyManagers": {"0": "all"},
  "createdTime": "2020-10-31T13:57:16.229",
  "lastUpdatedTime": "2020-10-31T13:57:16.229",
  "gatewayVendor": "wso2",
  "asyncTransportProtocols": [
    "http",
    "mqtt"
  ]
};

ApplicationList appList = {
  "count": 1,
  "list": [
    {
      "applicationId": "01234567-0123-0123-0123-012345678901",
      "name": "CalculatorApp",
      "throttlingPolicy": "Unlimited",
      "description": "Sample calculator application",
      "status": "APPROVED",
      "groups": [],
      "subscriptionCount": 0,
      "attributes": {},
      "owner": "admin"
    }
  ],
  "pagination": {
    "offset": 0,
    "limit": 10,
    "total": 1
  }
};

Application app = {
  "applicationId": "01234567-0123-0123-0123-012345678901",
  "name": "CalculatorApp",
  "throttlingPolicy": "Unlimited",
  "description": "Sample calculator application",
  "tokenType": "JWT",
  "status": "APPROVED",
  "groups": [],
  "subscriptionCount": 0,
  "keys": [],
  "attributes": {},
  "subscriptionScopes": [],
  "owner": "admin",
  "hashEnabled": false
};

Settings settings = {
  "grantTypes": [
    "refresh_token",
    "urn:ietf:params:oauth:grant-type:saml2-bearer",
    "password",
    "client_credentials",
    "iwa:ntlm",
    "authorization_code",
    "urn:ietf:params:oauth:grant-type:jwt-bearer"
  ],
  "scopes": [
    "apim:api_key",
    "apim:app_import_export",
    "apim:app_manage",
    "apim:store_settings",
    "apim:sub_alert_manage",
    "apim:sub_manage",
    "apim:subscribe",
    "openid"
  ],
  "applicationSharingEnabled": false,
  "mapExistingAuthApps": false,
  "apiGatewayEndpoint": "string",
  "monetizationEnabled": false,
  "recommendationEnabled": false,
  "IsUnlimitedTierPaid": false,
  "identityProvider": {
    "external": false
  },
  "IsAnonymousModeEnabled": true,
  "IsPasswordChangeEnabled": true,
  "userStorePasswordPattern": "^[\\S]{5,30}$",
  "passwordPolicyPattern": "^[\\S]{5,30}$",
  "passwordPolicyMinLength": 0,
  "passwordPolicyMaxLength": 0
};
