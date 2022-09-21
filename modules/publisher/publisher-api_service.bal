import ballerina/http;
import ballerina/io;

configurable int PUBLISHER_PORT = 9443;

listener http:Listener ep0 = new (PUBLISHER_PORT);

service /api/am/publisher/v3 on ep0 {
    resource function get apis(@http:Header string? 'x\-wso2\-tenant, string? query, @http:Header string? 'if\-none\-match, int 'limit = 25, int offset = 0, string sortBy = "createdTime", string sortOrder = "desc", @http:Header string? accept = "application/json") returns APIList|http:NotModified|NotAcceptableError {
        APIInfo[] infoList = [info1, info2];
        APIList list = {count: 2, list: infoList, pagination: {offset: 0, 'limit: 10, total: 2}};
        return list;
    }
    resource function post apis(@http:Payload API payload, string openAPIVersion = "v3") returns CreatedAPI|BadRequestError|UnsupportedMediaTypeError {
        API api = createdAPI;
        api.name = payload.get("name").toString();
        api.context = payload.get("context").toString();
        api.'version = payload.get("version").toString();
        // API api2 = {
        //     id: "123",
        //     name: payload.get("name").toString(),
        //     context: payload.get("context").toString(),
        //     'version: payload.get("version").toString()
        // };
        io:println("Created API: " + api.name);
        return {body: api};
    }
    resource function get apis/[string apiId](@http:Header string? 'x\-wso2\-tenant, @http:Header string? 'if\-none\-match) returns API|http:NotModified|NotFoundError|NotAcceptableError {
        API api = constApi;
        constApi.id = apiId;
        return api;
    }
    // resource function put apis/[string apiId](@http:Header string? 'if\-match, @http:Payload API payload) returns API|BadRequestError|ForbiddenError|NotFoundError|ConflictError|PreconditionFailedError {
    // }
    resource function delete apis/[string apiId](@http:Header string? 'if\-match) returns http:Ok|ForbiddenError|NotFoundError|ConflictError|PreconditionFailedError {
        io:println("API deleted successfully!");
        return http:OK;
    }
    // resource function put apis/[string apiId]/topics(@http:Header string? 'if\-match, @http:Payload TopicList payload) returns API {
    // }
    // resource function put apis/[string apiId]/'reimport\-service() returns API|NotFoundError|InternalServerErrorError {
    // }
    resource function get apis/[string apiId]/swagger(@http:Header string? 'if\-none\-match) returns string|http:NotModified|NotFoundError|NotAcceptableError {
        return sampleSwagger.toString();
    }
    // resource function put apis/[string apiId]/swagger(@http:Header string? 'if\-match, @http:Payload json payload) returns string|BadRequestError|ForbiddenError|NotFoundError|PreconditionFailedError {
    // }
    // resource function post apis/[string apiId]/'generate\-mock\-scripts(@http:Header string? 'if\-none\-match) returns string|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function get apis/[string apiId]/'generated\-mock\-scripts(@http:Header string? 'if\-none\-match) returns MockResponsePayloadList|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function get apis/[string apiId]/'resource\-policies(string? resourcePath, string? verb, string sequenceType, @http:Header string? 'if\-none\-match) returns ResourcePolicyList|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function get apis/[string apiId]/'resource\-policies/[string resourcePolicyId](@http:Header string? 'if\-none\-match) returns ResourcePolicyInfo|http:NotModified|BadRequestError|NotFoundError|NotAcceptableError {
    // }
    // resource function put apis/[string apiId]/'resource\-policies/[string resourcePolicyId](@http:Header string? 'if\-match, @http:Payload ResourcePolicyInfo payload) returns ResourcePolicyInfo|BadRequestError|ForbiddenError|NotFoundError|PreconditionFailedError {
    // }
    // resource function get apis/[string apiId]/thumbnail(@http:Header string? 'if\-none\-match) returns http:Ok|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function put apis/[string apiId]/thumbnail(@http:Header string? 'if\-match, @http:Payload json payload) returns FileInfo|BadRequestError|NotFoundError|PreconditionFailedError {
    // }
    // resource function get apis/[string apiId]/'subscription\-policies(@http:Header string? 'x\-wso2\-tenant, @http:Header string? 'if\-none\-match) returns ThrottlingPolicy|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function post apis/'copy\-api(string newVersion, string? serviceVersion, string apiId, boolean defaultVersion = false) returns CreatedAPI|BadRequestError|NotFoundError {
    // }
    // resource function post apis/'change\-lifecycle(string action, string? lifecycleChecklist, string apiId, @http:Header string? 'if\-match) returns WorkflowResponse|AcceptedWorkflowResponse|BadRequestError|NotFoundError|ConflictError|PreconditionFailedError {
    // }
    // resource function get apis/[string apiId]/'lifecycle\-history(@http:Header string? 'if\-none\-match) returns LifecycleHistory|http:NotModified|NotFoundError {
    // }
    // resource function get apis/[string apiId]/'lifecycle\-state(@http:Header string? 'if\-none\-match) returns LifecycleState|http:NotModified|NotFoundError|PreconditionFailedError {
    // }
    // resource function delete apis/[string apiId]/'lifecycle\-state/'pending\-tasks() returns http:Ok|NotFoundError|PreconditionFailedError {
    // }
    // resource function get apis/[string apiId]/revisions(string? query) returns APIRevisionList|NotFoundError {
    // }
    // resource function post apis/[string apiId]/revisions(@http:Payload APIRevision payload) returns CreatedAPIRevision|NotFoundError|PreconditionFailedError {
    // }
    // resource function get apis/[string apiId]/revisions/[string revisionId]() returns APIRevision|NotFoundError {
    // }
    // resource function delete apis/[string apiId]/revisions/[string revisionId]() returns APIRevisionList|http:NoContent|NotFoundError {
    // }
    // resource function get apis/[string apiId]/deployments() returns APIRevisionDeploymentList|NotFoundError {
    // }
    // resource function put apis/[string apiId]/deployments/[string deploymentId](@http:Payload APIRevisionDeployment payload) returns APIRevisionDeployment|NotFoundError {
    // }
    // resource function post apis/[string apiId]/'deploy\-revision(string? revisionId, @http:Payload APIRevisionDeployment[] payload) returns APIRevisionDeployment[]|BadRequestError|NotFoundError {
    // }
    // resource function post apis/[string apiId]/'undeploy\-revision(string? revisionId, string? revisionNumber, @http:Payload APIRevisionDeployment[] payload, boolean allEnvironments = false) returns http:Ok|CreatedAPIRevisionDeployment|BadRequestError|NotFoundError {
    // }
    // resource function post apis/[string apiId]/'restore\-revision(string? revisionId) returns CreatedAPI|NotFoundError {
    // }
    // resource function post apis/'import\-service(string serviceKey, @http:Payload API payload) returns CreatedAPI|NotFoundError|InternalServerErrorError {
    // }
    // resource function get apis/[string apiId]/comments(@http:Header string? 'x\-wso2\-tenant, int 'limit = 25, int offset = 0, boolean includeCommenterInfo = false) returns CommentList|NotFoundError|InternalServerErrorError {
    // }
    // resource function post apis/[string apiId]/comments(string? replyTo, @http:Payload PostRequestBody payload) returns CreatedComment|BadRequestError|UnauthorizedError|NotFoundError|UnsupportedMediaTypeError|InternalServerErrorError {
    // }
    // resource function get apis/[string apiId]/comments/[string commentId](@http:Header string? 'x\-wso2\-tenant, @http:Header string? 'if\-none\-match, boolean includeCommenterInfo = false, int replyLimit = 25, int replyOffset = 0) returns Comment|UnauthorizedError|NotFoundError|NotAcceptableError|InternalServerErrorError {
    // }
    // resource function delete apis/[string apiId]/comments/[string commentId](@http:Header string? 'if\-match) returns http:Ok|UnauthorizedError|ForbiddenError|NotFoundError|http:MethodNotAllowed|InternalServerErrorError {
    // }
    // resource function patch apis/[string apiId]/comments/[string commentId](@http:Payload PatchRequestBody payload) returns Comment|BadRequestError|UnauthorizedError|ForbiddenError|NotFoundError|UnsupportedMediaTypeError|InternalServerErrorError {
    // }
    // resource function get apis/[string apiId]/comments/[string commentId]/replies(@http:Header string? 'x\-wso2\-tenant, @http:Header string? 'if\-none\-match, int 'limit = 25, int offset = 0, boolean includeCommenterInfo = false) returns CommentList|UnauthorizedError|NotFoundError|NotAcceptableError|InternalServerErrorError {
    // }
    // resource function post apis/'import\-openapi(@http:Payload json payload) returns CreatedAPI|BadRequestError|UnsupportedMediaTypeError {
    // }
    // resource function post apis/'import\-wsdl(@http:Payload json payload) returns CreatedAPI|BadRequestError|UnsupportedMediaTypeError {
    // }
    // resource function post apis/'import\-graphql\-schema(@http:Header string? 'if\-match, @http:Payload json payload) returns CreatedAPI|BadRequestError|UnsupportedMediaTypeError {
    // }
    // resource function post apis/'validate\-openapi(@http:Payload json payload, boolean returnContent = false) returns OpenAPIDefinitionValidationResponse|BadRequestError|NotFoundError {
    // }
    // resource function post apis/'validate\-endpoint(string endpointUrl, string? apiId) returns ApiEndpointValidationResponse|BadRequestError|NotFoundError {
    // }
    // resource function post apis/validate(string query, @http:Header string? 'if\-none\-match) returns http:Ok|BadRequestError|NotFoundError {
    // }
    // resource function post apis/'validate\-wsdl(@http:Payload json payload) returns WSDLValidationResponse|BadRequestError|NotFoundError {
    // }
    // resource function post apis/'validate\-graphql\-schema(@http:Payload json payload) returns GraphQLValidationResponse|BadRequestError|NotFoundError {
    // }
    // resource function get apis/[string apiId]/'graphql\-schema(@http:Header string? 'if\-none\-match, @http:Header string? accept = "application/json") returns GraphQLSchema|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function put apis/[string apiId]/'graphql\-schema(@http:Header string? 'if\-match, @http:Payload json payload) returns http:Ok|BadRequestError|ForbiddenError|NotFoundError|PreconditionFailedError {
    // }
    // resource function get apis/[string apiId]/amznResourceNames() returns string|NotFoundError {
    // }
    // resource function post apis/[string apiId]/monetize(@http:Payload APIMonetizationInfo payload) returns http:Created|BadRequestError|NotFoundError|NotAcceptableError {
    // }
    // resource function get apis/[string apiId]/monetization() returns http:Ok|BadRequestError|NotFoundError|NotAcceptableError {
    // }
    // resource function get apis/[string apiId]/revenue() returns APIRevenue|http:NotModified|NotFoundError {
    // }
    // resource function get apis/[string apiId]/documents(@http:Header string? 'if\-none\-match, int 'limit = 25, int offset = 0) returns DocumentList|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function post apis/[string apiId]/documents(@http:Header string? 'if\-match, @http:Payload Document payload) returns CreatedDocument|BadRequestError|UnsupportedMediaTypeError {
    // }
    // resource function get apis/[string apiId]/documents/[string documentId](@http:Header string? 'if\-none\-match) returns Document|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function put apis/[string apiId]/documents/[string documentId](@http:Header string? 'if\-match, @http:Payload Document payload) returns Document|BadRequestError|NotFoundError|PreconditionFailedError {
    // }
    // resource function delete apis/[string apiId]/documents/[string documentId](@http:Header string? 'if\-match) returns http:Ok|NotFoundError|PreconditionFailedError {
    // }
    // resource function get apis/[string apiId]/documents/[string documentId]/content(@http:Header string? 'if\-none\-match) returns byte[]|http:SeeOther|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function post apis/[string apiId]/documents/[string documentId]/content(@http:Header string? 'if\-match, @http:Payload json payload) returns Document|BadRequestError|NotFoundError|PreconditionFailedError {
    // }
    // resource function post apis/[string apiId]/documents/validate(string name, @http:Header string? 'if\-match) returns http:Ok|BadRequestError|http:NotFound {
    // }
    // resource function get apis/[string apiId]/'wsdl\-info() returns WSDLInfo|NotFoundError|NotAcceptableError {
    // }
    // resource function get apis/[string apiId]/wsdl(@http:Header string? 'if\-none\-match) returns http:Ok|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function put apis/[string apiId]/wsdl(@http:Header string? 'if\-match, @http:Payload json payload) returns http:Ok|BadRequestError|ForbiddenError|NotFoundError|PreconditionFailedError {
    // }
    // resource function get apis/[string apiId]/'graphql\-policies/complexity() returns GraphQLQueryComplexityInfo|NotFoundError {
    // }
    // resource function put apis/[string apiId]/'graphql\-policies/complexity(@http:Payload GraphQLQueryComplexityInfo payload) returns http:Ok|NotFoundError {
    // }
    // resource function get apis/[string apiId]/'graphql\-policies/complexity/types() returns GraphQLSchemaTypeList|NotFoundError {
    // }
    // resource function get apis/[string apiId]/'resource\-paths(@http:Header string? 'if\-none\-match, int 'limit = 25, int offset = 0) returns ResourcePathList|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function get apis/[string apiId]/auditapi(@http:Header string? accept = "application/json") returns AuditReport|NotFoundError {
    // }
    // resource function get apis/[string apiId]/'external\-stores(@http:Header string? 'if\-none\-match) returns APIExternalStoreList|NotFoundError|InternalServerErrorError {
    // }
    // resource function post apis/[string apiId]/'publish\-to\-external\-stores(string? externalStoreIds, @http:Header string? 'if\-match) returns APIExternalStoreList|NotFoundError|InternalServerErrorError {
    // }
    // resource function post apis/[string apiId]/'generate\-key() returns APIKey|BadRequestError|NotFoundError {
    // }
    // resource function get apis/export(string? apiId, string? name, string? 'version, string? revisionNumber, string? providerName, string? format, boolean? preserveStatus, boolean latestRevision = false) returns json|NotFoundError|InternalServerErrorError {
    // }
    // resource function post apis/'import(boolean? preserveProvider, boolean? rotateRevision, boolean? overwrite, @http:Payload json payload) returns http:Ok|ForbiddenError|NotFoundError|ConflictError|InternalServerErrorError {
    // }
    // resource function get subscriptions(string? apiId, @http:Header string? 'if\-none\-match, string? query, int 'limit = 25, int offset = 0) returns SubscriptionList|http:NotModified|NotAcceptableError {
    // }
    // resource function get subscriptions/[string subscriptionId]/usage() returns APIMonetizationUsage|http:NotModified|NotFoundError {
    // }
    // resource function get subscriptions/[string subscriptionId]/'subscriber\-info() returns SubscriberInfo|NotFoundError {
    // }
    // resource function post subscriptions/'block\-subscription(string subscriptionId, string blockState, @http:Header string? 'if\-match) returns http:Ok|BadRequestError|NotFoundError|PreconditionFailedError {
    // }
    // resource function post subscriptions/'unblock\-subscription(string subscriptionId, @http:Header string? 'if\-match) returns http:Ok|BadRequestError|NotFoundError|PreconditionFailedError {
    // }
    resource function get 'throttling\-policies/[string policyLevel](@http:Header string? 'if\-none\-match, int 'limit = 25, int offset = 0) returns ThrottlingPolicyList|http:NotModified|NotAcceptableError {
        return policies;
    }
    // resource function get 'throttling\-policies/streaming/subscription(@http:Header string? 'if\-none\-match, int 'limit = 25, int offset = 0) returns SubscriptionPolicyList|http:NotModified|NotAcceptableError {
    // }
    // resource function get 'throttling\-policies/[string policyLevel]/[string policyName](@http:Header string? 'if\-none\-match) returns ThrottlingPolicy|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function get apis/[string apiId]/'client\-certificates(string? alias, int 'limit = 25, int offset = 0) returns ClientCertificates|BadRequestError|InternalServerErrorError {
    // }
    // resource function post apis/[string apiId]/'client\-certificates(@http:Payload json payload) returns ClientCertMetadata|BadRequestError|InternalServerErrorError {
    // }
    // resource function get apis/[string apiId]/'client\-certificates/[string alias]() returns CertificateInfo|BadRequestError|NotFoundError|InternalServerErrorError {
    // }
    // resource function put apis/[string apiId]/'client\-certificates/[string alias](@http:Payload json payload) returns ClientCertMetadata|BadRequestError|NotFoundError|InternalServerErrorError {
    // }
    // resource function delete apis/[string apiId]/'client\-certificates/[string alias]() returns http:Ok|BadRequestError|NotFoundError|InternalServerErrorError {
    // }
    // resource function get apis/[string apiId]/'client\-certificates/[string alias]/content() returns http:Ok|BadRequestError|NotFoundError|InternalServerErrorError {
    // }
    // resource function get 'endpoint\-certificates(string? alias, string? endpoint, int 'limit = 25, int offset = 0) returns Certificates|BadRequestError|NotFoundError|InternalServerErrorError {
    // }
    // resource function post 'endpoint\-certificates(@http:Payload json payload) returns CertMetadata|BadRequestError|InternalServerErrorError {
    // }
    // resource function get 'endpoint\-certificates/[string alias]() returns CertificateInfo|BadRequestError|NotFoundError|InternalServerErrorError {
    // }
    // resource function put 'endpoint\-certificates/[string alias](@http:Payload json payload) returns CertMetadata|BadRequestError|NotFoundError|InternalServerErrorError {
    // }
    // resource function delete 'endpoint\-certificates/[string alias]() returns http:Ok|BadRequestError|NotFoundError|InternalServerErrorError {
    // }
    // resource function get 'endpoint\-certificates/[string alias]/content() returns http:Ok|BadRequestError|NotFoundError|InternalServerErrorError {
    // }
    // resource function get 'endpoint\-certificates/[string alias]/usage(int 'limit = 25, int offset = 0) returns APIMetadataList|BadRequestError|NotFoundError|InternalServerErrorError {
    // }
    // resource function get search(string? query, @http:Header string? 'if\-none\-match, int 'limit = 25, int offset = 0) returns SearchResultList|http:NotModified|NotAcceptableError {
    // }
    // resource function get 'api\-products(string? query, @http:Header string? 'if\-none\-match, int 'limit = 25, int offset = 0, @http:Header string? accept = "application/json") returns APIProductList|http:NotModified|NotAcceptableError {
    // }
    // resource function post 'api\-products(@http:Payload APIProduct payload) returns CreatedAPIProduct|BadRequestError|UnsupportedMediaTypeError {
    // }
    // resource function get 'api\-products/[string apiProductId](@http:Header string? 'if\-none\-match, @http:Header string? accept = "application/json") returns APIProduct|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function put 'api\-products/[string apiProductId](@http:Header string? 'if\-match, @http:Payload APIProduct payload) returns APIProduct|BadRequestError|ForbiddenError|NotFoundError|PreconditionFailedError {
    // }
    // resource function delete 'api\-products/[string apiProductId](@http:Header string? 'if\-match) returns http:Ok|ForbiddenError|NotFoundError|PreconditionFailedError {
    // }
    // resource function get 'api\-products/[string apiProductId]/thumbnail(@http:Header string? 'if\-none\-match, @http:Header string? accept = "application/json") returns http:Ok|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function put 'api\-products/[string apiProductId]/thumbnail(@http:Header string? 'if\-match, @http:Payload json payload) returns FileInfo|BadRequestError|NotFoundError|PreconditionFailedError {
    // }
    // resource function get 'api\-products/[string apiProductId]/swagger(@http:Header string? 'if\-none\-match, @http:Header string? accept = "application/json") returns http:Ok|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function get 'api\-products/[string apiProductId]/'is\-outdated(@http:Header string? 'if\-none\-match, @http:Header string? accept = "application/json") returns APIProductOutdatedStatus|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function get 'api\-products/[string apiProductId]/documents(@http:Header string? 'if\-none\-match, int 'limit = 25, int offset = 0, @http:Header string? accept = "application/json") returns DocumentList|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function post 'api\-products/[string apiProductId]/documents(@http:Payload Document payload) returns CreatedDocument|BadRequestError|UnsupportedMediaTypeError {
    // }
    // resource function get 'api\-products/[string apiProductId]/documents/[string documentId](@http:Header string? 'if\-none\-match, @http:Header string? accept = "application/json") returns Document|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function put 'api\-products/[string apiProductId]/documents/[string documentId](@http:Header string? 'if\-match, @http:Payload Document payload) returns Document|BadRequestError|NotFoundError|PreconditionFailedError {
    // }
    // resource function delete 'api\-products/[string apiProductId]/documents/[string documentId](@http:Header string? 'if\-match) returns http:Ok|NotFoundError|PreconditionFailedError {
    // }
    // resource function get 'api\-products/[string apiProductId]/documents/[string documentId]/content(@http:Header string? 'if\-none\-match, @http:Header string? accept = "application/json") returns http:Ok|http:SeeOther|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function post 'api\-products/[string apiProductId]/documents/[string documentId]/content(@http:Header string? 'if\-match, @http:Payload json payload) returns Document|BadRequestError|NotFoundError|PreconditionFailedError {
    // }
    // resource function get 'api\-products/[string apiProductId]/revisions(string? query) returns APIRevisionList|NotFoundError {
    // }
    // resource function post 'api\-products/[string apiProductId]/revisions(@http:Payload APIRevision payload) returns CreatedAPIRevision|NotFoundError|PreconditionFailedError {
    // }
    // resource function get 'api\-products/[string apiProductId]/revisions/[string revisionId]() returns APIRevision|NotFoundError {
    // }
    // resource function delete 'api\-products/[string apiProductId]/revisions/[string revisionId]() returns APIRevisionList|http:NoContent|NotFoundError {
    // }
    // resource function get 'api\-products/[string apiProductId]/deployments() returns APIRevisionDeploymentList|NotFoundError {
    // }
    // resource function put 'api\-products/[string apiProductId]/deployments/[string deploymentId](@http:Payload APIRevisionDeployment payload) returns APIRevisionDeployment|NotFoundError {
    // }
    // resource function post 'api\-products/[string apiProductId]/'deploy\-revision(string? revisionId, @http:Payload APIRevisionDeployment[] payload) returns http:Ok|CreatedAPIRevisionDeployment|BadRequestError|NotFoundError {
    // }
    // resource function post 'api\-products/[string apiProductId]/'undeploy\-revision(string? revisionId, string? revisionNumber, @http:Payload APIRevisionDeployment[] payload, boolean allEnvironments = false) returns http:Ok|CreatedAPIRevisionDeployment|BadRequestError|NotFoundError {
    // }
    // resource function post 'api\-products/[string apiProductId]/'restore\-revision(string? revisionId) returns CreatedAPIProduct|NotFoundError {
    // }
    // resource function get 'api\-products/export(string? name, string? 'version, string? providerName, string? revisionNumber, string? format, boolean? preserveStatus, boolean latestRevision = false) returns json|NotFoundError|InternalServerErrorError {
    // }
    // resource function post 'api\-products/'import(boolean? preserveProvider, boolean? rotateRevision, boolean? importAPIs, boolean? overwriteAPIProduct, boolean? overwriteAPIs, @http:Payload json payload) returns http:Ok|ForbiddenError|NotFoundError|ConflictError|InternalServerErrorError {
    // }
    // resource function head roles/[string roleId]() returns http:Ok|NotFoundError {
    // }
    // resource function head me/roles/[string roleId]() returns http:Ok|NotFoundError {
    // }
    // resource function get 'external\-stores() returns ExternalStore|InternalServerErrorError {
    // }
    // resource function get settings() returns Settings|NotFoundError {
    // }
    // resource function get tenants(string state = "active", int 'limit = 25, int offset = 0) returns TenantList|NotFoundError|NotAcceptableError {
    // }
    // resource function head tenants/[string tenantDomain]() returns http:Ok|NotFoundError {
    // }
    // resource function get 'api\-categories() returns APICategoryList {
    // }
    // resource function get scopes(int 'limit = 25, int offset = 0) returns ScopeList|InternalServerErrorError {
    // }
    // resource function post scopes(@http:Payload Scope payload) returns CreatedScope|BadRequestError|UnsupportedMediaTypeError {
    // }
    // resource function get scopes/[string scopeId]() returns Scope|NotFoundError {
    // }
    // resource function put scopes/[string scopeId](@http:Payload Scope payload) returns Scope|BadRequestError|NotFoundError {
    // }
    // resource function delete scopes/[string scopeId]() returns http:Ok|NotFoundError {
    // }
    // resource function head scopes/[string scopeId]() returns http:Ok|NotFoundError {
    // }
    // resource function get scopes/[string scopeId]/usage() returns SharedScopeUsage|NotFoundError {
    // }
    // resource function get 'key\-managers() returns KeyManagerList {
    // }
    // resource function post apis/'validate\-asyncapi(@http:Payload json payload, boolean returnContent = false) returns AsyncAPISpecificationValidationResponse|BadRequestError|NotFoundError {
    // }
    // resource function post apis/'import\-asyncapi(@http:Payload json payload) returns CreatedAPI|BadRequestError|UnsupportedMediaTypeError {
    // }
    // resource function get apis/[string apiId]/asyncapi(@http:Header string? 'if\-none\-match) returns string|http:NotModified|NotFoundError|NotAcceptableError {
    // }
    // resource function put apis/[string apiId]/asyncapi(@http:Header string? 'if\-match, @http:Payload json payload) returns string|BadRequestError|ForbiddenError|NotFoundError|PreconditionFailedError {
    // }
    // resource function get apis/[string apiId]/environments/[string envId]/keys() returns EnvironmentProperties|BadRequestError|ForbiddenError|NotFoundError {
    // }
    // resource function put apis/[string apiId]/environments/[string envId]/keys(@http:Payload EnvironmentProperties payload) returns EnvironmentProperties|BadRequestError|ForbiddenError|NotFoundError {
    // }
    // resource function get apis/[string apiId]/'operation\-policies(string? query, int 'limit = 25, int offset = 0) returns OperationPolicyDataList|NotAcceptableError|InternalServerErrorError {
    // }
    // resource function post apis/[string apiId]/'operation\-policies(@http:Payload json payload) returns CreatedOperationPolicyData|BadRequestError|NotFoundError|InternalServerErrorError {
    // }
    // resource function get apis/[string apiId]/'operation\-policies/[string operationPolicyId]() returns OperationPolicyData|NotFoundError|NotAcceptableError|InternalServerErrorError {
    // }
    // resource function delete apis/[string apiId]/'operation\-policies/[string operationPolicyId]() returns http:Ok|ForbiddenError|NotFoundError|InternalServerErrorError {
    // }
    // resource function get apis/[string apiId]/'operation\-policies/[string operationPolicyId]/content() returns json|NotFoundError|InternalServerErrorError {
    // }
    // resource function get 'operation\-policies(int? 'limit, string? query, int offset = 0) returns OperationPolicyDataList|NotAcceptableError|InternalServerErrorError {
    // }
    // resource function post 'operation\-policies(@http:Payload json payload) returns CreatedOperationPolicyData|BadRequestError|NotFoundError|InternalServerErrorError {
    // }
    // resource function get 'operation\-policies/export(string? name, string? 'version, string? format) returns json|ForbiddenError|InternalServerErrorError|NotFoundError {
    // }
    // resource function post 'operation\-policies/'import(@http:Payload json payload) returns http:Ok|ForbiddenError|ConflictError|InternalServerErrorError {
    // }
    // resource function get 'operation\-policies/[string operationPolicyId]() returns OperationPolicyData|NotFoundError|NotAcceptableError|InternalServerErrorError {
    // }
    // resource function delete 'operation\-policies/[string operationPolicyId]() returns http:Ok|ForbiddenError|NotFoundError|InternalServerErrorError {
    // }
    // resource function get 'operation\-policies/[string operationPolicyId]/content() returns json|NotFoundError|InternalServerErrorError {
    // }
    // resource function post 'api\-products/'change\-lifecycle(string action, string? lifecycleChecklist, string apiProductId, @http:Header string? 'if\-match) returns WorkflowResponse|BadRequestError|UnauthorizedError|NotFoundError|ConflictError|InternalServerErrorError {
    // }
    // resource function get 'api\-products/[string apiProductId]/'lifecycle\-history(@http:Header string? 'if\-none\-match) returns LifecycleHistory|UnauthorizedError|NotFoundError|InternalServerErrorError {
    // }
    // resource function get 'api\-products/[string apiProductId]/'lifecycle\-state(@http:Header string? 'if\-none\-match) returns LifecycleState|UnauthorizedError|NotFoundError|InternalServerErrorError {
    // }
    // resource function delete 'api\-products/[string apiProductId]/'lifecycle\-state/'pending\-tasks() returns http:Ok|UnauthorizedError|NotFoundError|InternalServerErrorError {
    // }
}
