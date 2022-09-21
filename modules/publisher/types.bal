import ballerina/http;
import ballerina/constraint;

public type AcceptedWorkflowResponse record {|
    *http:Accepted;
    WorkflowResponse body;
|};

public type CreatedAPIRevision record {|
    *http:Created;
    APIRevision body;
|};

public type ConflictError record {|
    *http:Conflict;
    Error body;
|};

public type InternalServerErrorError record {|
    *http:InternalServerError;
    Error body;
|};

public type CreatedAPI record {|
    *http:Created;
    API body;
|};

public type CreatedComment record {|
    *http:Created;
    Comment body;
|};

public type NotFoundError record {|
    *http:NotFound;
    Error body;
|};

public type CreatedScope record {|
    *http:Created;
    Scope body;
|};

public type BadRequestError record {|
    *http:BadRequest;
    Error body;
|};

public type UnauthorizedError record {|
    *http:Unauthorized;
    Error body;
|};

public type CreatedAPIProduct record {|
    *http:Created;
    APIProduct body;
|};

public type NotAcceptableError record {|
    *http:NotAcceptable;
    Error body;
|};

public type UnsupportedMediaTypeError record {|
    *http:UnsupportedMediaType;
    Error body;
|};

public type ForbiddenError record {|
    *http:Forbidden;
    Error body;
|};

public type PreconditionFailedError record {|
    *http:PreconditionFailed;
    Error body;
|};

public type CreatedDocument record {|
    *http:Created;
    Document body;
|};

public type CreatedOperationPolicyData record {|
    *http:Created;
    OperationPolicyData body;
|};

public type CreatedAPIRevisionDeployment record {|
    *http:Created;
    APIRevisionDeployment[] body;
|};

public type GraphQLSchemaTypeList record {
    GraphQLSchemaType[] typeList?;
};

public type APIScope record {
    Scope scope;
    # States whether scope is shared. This will not be honored when updating/adding scopes to APIs or when
    # adding/updating Shared Scopes.
    boolean shared?;
};

public type CertificateValidity record {
    string 'from?;
    string to?;
};

public type Document record {
    string documentId?;
    @constraint:String {maxLength: 60, minLength: 1}
    string name;
    string 'type;
    @constraint:String {maxLength: 32766, minLength: 1}
    string summary?;
    string sourceType;
    string sourceUrl?;
    string fileName?;
    string inlineContent?;
    string otherTypeName?;
    string visibility;
    string createdTime?;
    string createdBy?;
    string lastUpdatedTime?;
    string lastUpdatedBy?;
};

public type ExternalStore record {
    # The external store identifier, which is a unique value.
    string id?;
    # The name of the external API Store that is displayed in the Publisher UI.
    string displayName?;
    # The type of the Store. This can be a WSO2-specific API Store or an external one.
    string 'type?;
    # The endpoint URL of the external store
    string endpoint?;
};

public type SharedScopeUsage record {
    # UUID of the Scope. Valid only for shared scopes.
    string id;
    # name of Scope
    string name;
    # API list which have used the shared scope
    SharedScopeUsedAPIInfo[] usedApiList?;
};

public type ApisValidateopenapiBody record {
    # OpenAPI definition url
    string url?;
    # OpenAPI definition as a file
    string file?;
    # Inline content of the OpenAPI definition
    string inlineAPIDefinition?;
};

public type EventCountLimit record {
    *ThrottleLimitBase;
    # Maximum number of events allowed
    int eventCount;
};

public type DocumentidContentBody record {
    # Document to upload
    string file?;
    # Inline content of the document
    string inlineContent?;
};

public type Endpoint record {
    # UUID of the Endpoint entry
    string id?;
    # name of the Endpoint entry
    string name?;
    EndpointEndpointconfig endpointConfig?;
    EndpointEndpointsecurity endpointSecurity?;
    # Endpoint max tps
    int maxTps?;
    string 'type?;
};

public type APIRevisionAPIInfo record {
    string id?;
};

public type ScopeList record {
    # Number of Scopes returned.
    int count?;
    Scope[] list?;
    Pagination pagination?;
};

public type CertificateInfo record {
    string status?;
    CertificateValidity validity?;
    string 'version?;
    string subject?;
};

public type ResourcePolicyInfo record {
    # UUID of the resource policy registry artifact
    string id?;
    # HTTP verb used for the resource path
    string httpVerb?;
    # A string that represents the resource path of the api for the related resource policy
    string resourcePath?;
    # The resource policy content
    string content?;
};

public type APIMonetizationUsage record {
    # Map of custom properties related to monetization usage
    record {} properties?;
};

public type Subscription record {
    string subscriptionId;
    ApplicationInfo applicationInfo;
    string throttlingPolicy;
    string subscriptionStatus;
};

public type GraphQLValidationResponse record {
    # This attribute declares whether this definition is valid or not.
    boolean isValid;
    # This attribute declares the validation error message
    string errorMessage;
    # Summary of the GraphQL including the basic information
    GraphqlvalidationresponseGraphqlinfo graphQLInfo?;
};

public type Settings record {
    # The Developer Portal URL
    string devportalUrl?;
    Environment[] environment?;
    string[] scopes?;
    MonetizationAttribute[] monetizationAttributes?;
    record {} securityAuditProperties?;
    # Is External Stores configuration enabled
    boolean externalStoresEnabled?;
    # Is Document Visibility configuration enabled
    boolean docVisibilityEnabled?;
    # Is Cross Tenant Subscriptions Enabled
    boolean crossTenantSubscriptionEnabled?;
    # Authorization Header
    string authorizationHeader?;
};

public type ApiinfoAdditionalproperties record {
    string name?;
    string value?;
    boolean display?;
};

public type APIRevision record {
    string displayName?;
    string id?;
    @constraint:String {maxLength: 255}
    string description?;
    string createdTime?;
    APIRevisionAPIInfo apiInfo?;
    APIRevisionDeployment[] deploymentInfo?;
};

public type APIExternalStoreList record {
    # Number of external stores returned.
    int count?;
    APIExternalStore[] list?;
};

public type ApiidSwaggerBody record {
    # Swagger definition of the API
    string apiDefinition?;
    # Swagger definition URL of the API
    string url?;
    # Swagger definitio as a file
    string file?;
};

public type ResourcePathList record {
    # Number of API Resource Paths returned.
    int count?;
    ResourcePath[] list?;
    Pagination pagination?;
};

public type APIBusinessInformation record {
    @constraint:String {maxLength: 120}
    string businessOwner?;
    string businessOwnerEmail?;
    @constraint:String {maxLength: 120}
    string technicalOwner?;
    string technicalOwnerEmail?;
};

public type APIMonetizationInfo record {
    # Flag to indicate the monetization status
    boolean enabled;
    # Map of custom properties related to monetization
    record {} properties?;
};

public type ThrottlePolicy record {
    # Id of policy
    string policyId?;
    # Name of policy
    @constraint:String {maxLength: 60, minLength: 1}
    string policyName;
    # Display name of the policy
    @constraint:String {maxLength: 512}
    string displayName?;
    # Description of the policy
    @constraint:String {maxLength: 1024}
    string description?;
    # Indicates whether the policy is deployed successfully or not.
    boolean isDeployed = false;
    # Indicates the type of throttle policy
    string 'type?;
};

public type ApiidThumbnailBody record {
    # Image to upload
    string file;
};

public type GraphQLSchema record {
    string name;
    string schemaDefinition?;
};

public type APISearchResult record {
    *SearchResult;
    # A brief description about the API
    string description?;
    # A string that represents the context of the user's request
    string context?;
    # The templated context of the API
    string contextTemplate?;
    # The version of the API
    string 'version?;
    # If the provider value is not given, the user invoking the API will be used as the provider.
    string provider?;
    # This describes in which status of the lifecycle the API is
    string status?;
    string thumbnailUri?;
    boolean advertiseOnly?;
};

public type ThrottleLimit record {
    # Type of the throttling limit. Allowed values are "REQUESTCOUNTLIMIT" and "BANDWIDTHLIMIT".
    # Please see schemas of "RequestCountLimit" and "BandwidthLimit" throttling limit types in
    # Definitions section.
    string 'type;
    RequestCountLimit requestCount?;
    BandwidthLimit bandwidth?;
    EventCountLimit eventCount?;
};

public type ThrottlingPolicyList record {
    # Number of Tiers returned.
    int count?;
    ThrottlingPolicy[] list?;
    Pagination pagination?;
};

public type ApisImportBody record {
    # Zip archive consisting on exported API configuration
    string file;
};

public type CommenterInfo record {
    string firstName?;
    string lastName?;
    string fullName?;
};

public type Application record {
    string applicationId?;
    string name;
    string subscriber?;
    string throttlingTier;
    string description?;
    string groupId?;
};

public type ApisImportopenapiBody record {
    # Definition to upload as a file
    string file?;
    # Definition url
    string url?;
    # Additional attributes specified as a stringified JSON with API's schema
    string additionalProperties?;
    # Inline content of the OpenAPI definition
    string inlineAPIDefinition?;
};

public type ClientcertificatesAliasBody record {
    # The certificate that needs to be uploaded.
    string certificate?;
    # The tier of the certificate
    string tier?;
};

public type ErrorListItem record {
    string code;
    # Description about individual errors occurred
    string message;
    # A detail description about the error message.
    string description?;
};

public type APICategoryList record {
    # Number of API categories returned.
    int count?;
    APICategory[] list?;
};

public type ApiproductsImportBody record {
    # Zip archive consisting on exported API Product configuration
    string file;
};

public type SharedScopeUsedAPIInfo record {
    string name;
    string context;
    string 'version;
    # If the provider value is not given user invoking the api will be used as the provider.
    string provider?;
    # Resource list which have used the shared scope within this API
    SharedScopeUsedAPIResourceInfo[] usedResourceList?;
};

public type KeyManagerList record {
    # Number of Key managers returned.
    int count?;
    KeyManagerInfo[] list?;
};

public type ApisValidatewsdlBody record {
    # Definition url
    string url?;
    # Definition to upload as a file
    string file?;
};

# API definition information
public type AsyncapispecificationvalidationresponseInfo record {
    string name?;
    string 'version?;
    string context?;
    string description?;
    string asyncAPIVersion?;
    string protocol?;
    # contains host/servers specified in the AsyncAPI file/URL
    string[] endpoints?;
    string gatewayVendor?;
    # contains available transports for an async API
    string[] asyncTransportProtocols?;
};

public type SubscriptionThrottlePolicyPermission record {
    string permissionType;
    string[] roles;
};

# API definition information
public type OpenapidefinitionvalidationresponseInfo record {
    string name?;
    string 'version?;
    string context?;
    string description?;
    string openAPIVersion?;
    # contains host/servers specified in the OpenAPI file/URL
    string[] endpoints?;
};

public type APIMaxTps record {
    int production?;
    int sandbox?;
};

public type LifecycleHistory record {
    int count?;
    LifecycleHistoryItem[] list?;
};

public type APIMetadataList record {
    # Number of APIs returned.
    int count?;
    APIMetadata[] list?;
    Pagination pagination?;
};

public type ApiidClientcertificatesBody record {
    # The certificate that needs to be uploaded.
    string certificate;
    # Alias for the certificate
    @constraint:String {maxLength: 30, minLength: 1}
    string alias;
    # API tier to which the certificate should be applied.
    string tier;
};

public type LifecyclestateAvailabletransitions record {
    string event?;
    string targetState?;
};

public type ThreatProtectionPolicy record {
    # Policy ID
    string uuid?;
    # Name of the policy
    string name;
    # Type of the policy
    string 'type;
    # policy as a json string
    string policy;
};

public type APIRevisionDeploymentList record {
    APIRevisionDeployment[] list?;
};

public type KeyManagerInfo record {
    string id?;
    string name;
    # display name of Keymanager
    string displayName?;
    string 'type;
    string description?;
    boolean enabled?;
    record {}[] additionalProperties?;
};

public type EndpointcertificatesAliasBody record {
    # The certificate that needs to be uploaded.
    string certificate;
};

# Summary of the GraphQL including the basic information
public type GraphqlvalidationresponseGraphqlinfo record {
    APIOperations[] operations?;
    GraphQLSchema graphQLSchema?;
};

public type APIExternalStore record {
    # The external store identifier, which is a unique value.
    string id?;
    # The recent timestamp which a given API is updated in the external store.
    string lastUpdatedTime?;
};

public type ResourcePolicyList record {
    ResourcePolicyInfo[] list?;
    # Number of policy resources returned.
    int count?;
};

public type AsyncAPISpecificationValidationResponse record {
    # This attribute declares whether this definition is valid or not.
    boolean isValid;
    # AsyncAPI specification content
    string content?;
    # API definition information
    AsyncapispecificationvalidationresponseInfo info?;
    # If there are more than one error list them out. For example, list out validation error by each field.
    ErrorListItem[] errors?;
};

public type EndpointconfigAttributes record {
    string name?;
    string value?;
};

public type SharedScopeUsedAPIResourceInfo record {
    string target?;
    string verb?;
};

public type SearchResult record {
    string id?;
    string name;
    string 'type?;
    # Accepted values are HTTP, WS, SOAPTOREST, GRAPHQL
    string transportType?;
};

public type GatewayEnvironmentProtocolURI record {
    string protocol;
    string endpointURI;
};

public type ThrottlingPolicy record {
    string name;
    string description?;
    string policyLevel?;
    string displayName?;
    # Custom attributes added to the policy policy
    record {} attributes?;
    # Maximum number of requests which can be sent within a provided unit time
    int requestCount;
    # Unit of data allowed to be transfered. Allowed values are "KB", "MB" and "GB"
    string dataUnit?;
    int unitTime;
    string timeUnit?;
    # Burst control request count
    int rateLimitCount = 0;
    # Burst control time unit
    string rateLimitTimeUnit?;
    # Default quota limit type
    string quotaPolicyType?;
    # This attribute declares whether this policy is available under commercial or free
    string tierPlan;
    # By making this attribute to false, you are capabale of sending requests
    # even if the request count exceeded within a unit time
    boolean stopOnQuotaReach;
    # Properties of a tier plan which are related to monetization
    record {} monetizationProperties?;
};

public type DocumentSearchResult record {
    *SearchResult;
    string docType?;
    string summary?;
    string sourceType?;
    string sourceUrl?;
    string otherTypeName?;
    string visibility?;
    # The name of the associated API
    string apiName?;
    # The version of the associated API
    string apiVersion?;
    string apiProvider?;
    string apiUUID?;
    string associatedType?;
};

public type APIKey record {
    # API Key
    string apikey?;
    int validityTime?;
};

public type OperationPolicyData record {
    string category?;
    string id?;
    string name?;
    string 'version?;
    string displayName?;
    string description?;
    string[] applicableFlows?;
    string[] supportedGateways?;
    string[] supportedApiTypes?;
    boolean isAPISpecific?;
    string md5?;
    OperationPolicySpecAttribute[] policyAttributes?;
};

public type AuditReport record {
    # The API Security Audit Report
    string report?;
    # The overall grade of the Security Audit
    string grade?;
    # The number of errors in the API Definition
    int numErrors?;
    # The External API ID
    string externalApiId?;
};

public type PatchRequestBody record {
    # Content of the comment
    @constraint:String {maxLength: 512}
    string content?;
    # Category of the comment
    string category?;
};

public type GraphQLQueryComplexityInfo record {
    GraphQLCustomComplexityInfo[] list?;
};

public type ApiidAsyncapiBody record {
    # AsyncAPI definition of the API
    string apiDefinition?;
    # AsyncAPI definition URL of the API
    string url?;
    # AsyncAPI definition as a file
    string file?;
};

public type SubscriptionList record {
    # Number of Subscriptions returned.
    int count?;
    Subscription[] list?;
    Pagination pagination?;
};

# Representation of a list of client certificates
public type ClientCertificates record {
    int count?;
    ClientCertMetadata[] certificates?;
    Pagination pagination?;
};

# Summary of the WSDL including the basic information
public type WsdlvalidationresponseWsdlinfo record {
    # WSDL version
    string 'version?;
    # A list of endpoints the service exposes
    WsdlvalidationresponseWsdlinfoEndpoints[] endpoints?;
};

public type AdditionalProperty record {
    string 'key?;
    string value?;
};

public type APICategory record {
    string id?;
    string name;
    string description?;
};

public type BandwidthLimit record {
    *ThrottleLimitBase;
    # Amount of data allowed to be transfered
    int dataAmount;
    # Unit of data allowed to be transfered. Allowed values are "KB", "MB" and "GB"
    string dataUnit;
};

public type EndpointConfig record {
    # Service url of the endpoint
    string url?;
    # Time out of the endpoint
    string timeout?;
    EndpointconfigAttributes[] attributes?;
};

public type EndpointEndpointconfig record {
    string endpointType?;
    EndpointConfig[] list?;
};

public type DocumentList record {
    # Number of Documents returned.
    int count?;
    Document[] list?;
    Pagination pagination?;
};

public type EnvironmentProperties record {
};

public type OperationpoliciesBody record {
    # Operation policy specification to upload
    string policySpecFile?;
    # Operation policy definition of synapse gateway to upload
    string synapsePolicyDefinitionFile?;
    # Operation policy definition of choreo connect to upload
    string ccPolicyDefinitionFile?;
};

public type GraphQLSchemaType record {
    # Type found within the GraphQL Schema
    string 'type?;
    # Array of fields under current type
    string[] fieldList?;
};

public type APIProductSearchResult record {
    *SearchResult;
    # A brief description about the API
    string description?;
    # A string that represents the context of the user's request
    string context?;
    # The version of the API Product
    string 'version?;
    # If the provider value is not given, the user invoking the API will be used as the provider.
    string provider?;
    # This describes in which status of the lifecycle the APIPRODUCT is
    string status?;
    string thumbnailUri?;
};

public type APIProductInfo record {
    # UUID of the api product
    string id?;
    # Name of the API Product
    string name?;
    string context?;
    # A brief description about the API
    string description?;
    # If the provider value is not given, the user invoking the API will be used as the provider.
    string provider?;
    boolean hasThumbnail?;
    # State of the API product. Only published API products are visible on the Developer Portal
    string state?;
    # Types of API security, the current API secured with. It can be either OAuth2 or mutual SSL or both. If
    # it is not set OAuth2 will be set as the security for the current API.
    string[] securityScheme?;
    string gatewayVendor?;
};

public type ProductAPI record {
    string name?;
    string apiId;
    string 'version?;
    APIOperations[] operations?;
};

public type ApiidOperationpoliciesBody record {
    # Policy specification to upload
    string policySpecFile?;
    # Operation policy definition of synapse gateway to upload
    string synapsePolicyDefinitionFile?;
    # Operation policy definition of choreo connect to upload
    string ccPolicyDefinitionFile?;
};

# Representation of a list of certificates
public type Certificates record {
    int count?;
    CertMetadata[] certificates?;
    Pagination pagination?;
};

public type LifecyclestateCheckitems record {
    string name?;
    boolean value?;
    string[] requiredStates?;
};

public type EndpointcertificatesBody record {
    # The certificate that needs to be uploaded.
    string certificate;
    # Alias for the certificate
    @constraint:String {maxLength: 30, minLength: 1}
    string alias;
    # Endpoint to which the certificate should be applied.
    string endpoint;
};

public type APIRevisionDeployment record {
    @constraint:String {maxLength: 255}
    string revisionUuid?;
    @constraint:String {maxLength: 255, minLength: 1}
    string name?;
    @constraint:String {maxLength: 255, minLength: 1}
    string vhost?;
    boolean displayOnDevportal?;
    string deployedTime?;
    string successDeployedTime?;
};

public type ApiEndpointValidationResponse record {
    # HTTP status code
    int statusCode;
    # string
    string statusMessage;
    # If an error occurs, the error message will be set to this property.
    # If not, this will remain null.
    string 'error?;
};

public type EnvironmentList record {
    # Number of Environments returned.
    int count?;
    Environment[] list?;
};

public type ApiServiceinfo record {
    string 'key?;
    string name?;
    string 'version?;
    boolean outdated?;
};

public type APIProduct record {
    # UUID of the api product
    string id?;
    # Name of the API Product
    @constraint:String {maxLength: 50, minLength: 1}
    string name;
    @constraint:String {maxLength: 60, minLength: 1}
    string context?;
    # A brief description about the API
    string description?;
    # If the provider value is not given, the user invoking the API will be used as the provider.
    @constraint:String {maxLength: 50}
    string provider?;
    boolean hasThumbnail?;
    # State of the API product. Only published API products are visible on the Developer Portal
    string state = "CREATED";
    boolean enableSchemaValidation?;
    boolean isRevision?;
    # UUID of the api product registry artifact
    string revisionedApiProductId?;
    int revisionId?;
    boolean responseCachingEnabled?;
    int cacheTimeout?;
    # The visibility level of the API. Accepts one of the following. PUBLIC, PRIVATE, RESTRICTED.
    string visibility = "PUBLIC";
    # The user roles that are able to access the API
    string[] visibleRoles?;
    string[] visibleTenants?;
    # Defines whether the API Product is restricted to certain set of publishers or creators or is it visible to all the
    # publishers and creators. If the accessControl restriction is none, this API Product can be modified by all the
    # publishers and creators, if not it can only be viewable/modifiable by certain set of publishers and creators,
    # based on the restriction.
    string accessControl = "NONE";
    # The user roles that are able to view/modify as API Product publisher or creator.
    string[] accessControlRoles?;
    # The API type to be used. Accepted values are API, APIPRODUCT
    string apiType?;
    # Supported transports for the API (http and/or https).
    string[] transport?;
    string[] tags?;
    string[] policies?;
    # The API level throttling policy selected for the particular API Product
    string apiThrottlingPolicy?;
    # Name of the Authorization header used for invoking the API. If it is not set, Authorization header name specified
    # in tenant or system level will be used.
    string authorizationHeader?;
    # Types of API security, the current API secured with. It can be either OAuth2 or mutual SSL or both. If
    # it is not set OAuth2 will be set as the security for the current API.
    string[] securityScheme?;
    # The subscription availability. Accepts one of the following. CURRENT_TENANT, ALL_TENANTS or SPECIFIC_TENANTS.
    string subscriptionAvailability = "ALL_TENANTS";
    string[] subscriptionAvailableTenants?;
    # Map of custom properties of API
    ApiinfoAdditionalproperties[] additionalProperties?;
    record {} additionalPropertiesMap?;
    APIMonetizationInfo monetization?;
    APIProductBusinessInformation businessInformation?;
    # CORS configuration for the API
    APICorsConfiguration corsConfiguration?;
    string createdTime?;
    string lastUpdatedTime?;
    string gatewayVendor?;
    # APIs and resources in the API Product.
    ProductAPI[] apis?;
    APIScope[] scopes?;
    # API categories
    string[] categories?;
    string workflowStatus?;
};

public type Pagination record {
    int offset?;
    int 'limit?;
    int total?;
    # Link to the next subset of resources qualified.
    # Empty if no more resources are to be returned.
    string next?;
    # Link to the previous subset of resources qualified.
    # Empty if current subset is the first subset returned.
    string previous?;
};

public type ThreatProtectionPolicyList record {
    ThreatProtectionPolicy[] list?;
};

public type APIRevisionList record {
    # Number of API revisions returned
    int count?;
    APIRevision[] list?;
};

public type ResourcePath record {
    int id;
    string resourcePath?;
    string httpVerb?;
};

public type FileInfo record {
    # relative location of the file (excluding the base context and host of the Publisher API)
    string relativePath?;
    # media-type of the file
    string mediaType?;
};

public type OpenAPIDefinitionValidationResponse record {
    # This attribute declares whether this definition is valid or not.
    boolean isValid;
    # OpenAPI definition content.
    string content?;
    # API definition information
    OpenapidefinitionvalidationresponseInfo info?;
    # If there are more than one error list them out.
    # For example, list out validation errors by each field.
    ErrorListItem[] errors?;
};

public type ApiidWsdlBody record {
    # WSDL file or archive to upload
    string file?;
    # WSDL Definition url
    string url?;
};

public type ThrottleLimitBase record {
    # Unit of the time. Allowed values are "sec", "min", "hour", "day"
    string timeUnit;
    # Time limit that the throttling limit applies.
    int unitTime;
};

public type APIOperations record {
    string id?;
    string target?;
    string verb?;
    string authType?;
    string throttlingPolicy?;
    string[] scopes?;
    string[] usedProductIds?;
    string amznResourceName?;
    int amznResourceTimeout?;
    string payloadSchema?;
    string uriMapping?;
    APIOperationPolicies operationPolicies?;
};

public type APIList record {
    # Number of APIs returned.
    int count?;
    APIInfo[] list?;
    Pagination pagination?;
};

# Meta data of certificate
public type ClientCertMetadata record {
    string alias?;
    string apiId?;
    string tier?;
};

public type ApisValidategraphqlschemaBody record {
    # Definition to upload as a file
    string file;
};

# CORS configuration for the API
public type APICorsConfiguration record {
    boolean corsConfigurationEnabled?;
    string[] accessControlAllowOrigins?;
    boolean accessControlAllowCredentials?;
    string[] accessControlAllowHeaders?;
    string[] accessControlAllowMethods?;
};

public type MockResponsePayloadInfo record {
    # path of the resource
    string path?;
    # new modified code
    string content?;
    string verb?;
};

public type ApisImportgraphqlschemaBody record {
    # Definition type to upload
    string 'type?;
    # Definition to uploads a file
    string file?;
    # Additional attributes specified as a stringified JSON with API's schema
    string additionalProperties?;
};

public type LifecycleHistoryItem record {
    string previousState?;
    string postState?;
    string user?;
    string updatedTime?;
};

public type APIProductList record {
    # Number of API Products returned.
    int count?;
    APIProductInfo[] list?;
    Pagination pagination?;
};

public type WSDLInfo record {
    # Indicates whether the WSDL is a single WSDL or an archive in ZIP format
    string 'type?;
};

public type EndpointEndpointsecurity record {
    boolean enabled?;
    string 'type?;
    string username?;
    string password?;
};

public type MonetizationAttribute record {
    # Is attribute required
    boolean required?;
    # Name of the attribute
    string name?;
    # Display name of the attribute
    string displayName?;
    # Description of the attribute
    string description?;
    # Is attribute hidden
    boolean hidden?;
    # Default value of the attribute
    string default?;
};

public type WSDLValidationResponse record {
    # This attribute declares whether this definition is valid or not.
    boolean isValid;
    # If there are more than one error list them out.
    # For example, list out validation errors by each field.
    ErrorListItem[] errors?;
    # Summary of the WSDL including the basic information
    WsdlvalidationresponseWsdlinfo wsdlInfo?;
};

public type MockResponsePayloadList record {
    MockResponsePayloadInfo[] list?;
};

public type OperationPolicy record {
    string policyName;
    string policyVersion = "v1";
    string policyId?;
    record {} parameters?;
};

public type Environment record {
    string id;
    string name;
    string displayName?;
    string 'type;
    string serverUrl;
    string provider?;
    boolean showInApiConsole;
    VHost[] vhosts?;
    GatewayEnvironmentProtocolURI[] endpointURIs?;
    AdditionalProperty[] additionalProperties?;
};

public type AdvertiseInfo record {
    boolean advertised?;
    string apiExternalProductionEndpoint?;
    string apiExternalSandboxEndpoint?;
    string originalDevPortalUrl?;
    string apiOwner?;
    string vendor?;
};

public type CommentList record {
    # Number of Comments returned.
    int count?;
    Comment[] list?;
    Pagination pagination?;
};

public type GraphQLCustomComplexityInfo record {
    # The type found within the schema of the API
    string 'type;
    # The field which is found under the type within the schema of the API
    string 'field;
    # The complexity value allocated for the associated field under the specified type
    int complexityValue;
};

public type VHost record {
    string host?;
    string httpContext?;
    int httpPort?;
    int httpsPort?;
    int wsPort?;
    int wssPort?;
    int websubHttpPort?;
    int websubHttpsPort?;
};

public type ApiidGraphqlschemaBody record {
    # schema definition of the GraphQL API
    string schemaDefinition;
};

public type CustomAttribute record {
    # Name of the custom attribute
    string name;
    # Value of the custom attribute
    string value;
};

public type APIRevenue record {
    # Map of custom properties related to API revenue
    record {} properties?;
};

public type MediationPolicy record {
    string id?;
    string name;
    string 'type?;
    boolean shared?;
};

public type ApplicationInfo record {
    string applicationId?;
    string name?;
    string subscriber?;
    string description?;
    int subscriptionCount?;
};

public type LifecycleState record {
    string state?;
    LifecyclestateCheckitems[] checkItems?;
    LifecyclestateAvailabletransitions[] availableTransitions?;
};

public type ApisImportwsdlBody record {
    # WSDL definition as a file or archive
    # 
    # **Sample cURL to Upload WSDL File**
    # 
    # curl -k -H "Authorization: Bearer ae4eae22-3f65-387b-a171-d37eaa366fa8" -F file=@api.wsdl -F additionalProperties=@data.json "https://127.0.0.1:9443/api/am/publisher/v3/apis/import-wsdl"
    # 
    # **Sample cURL to Upload WSDL Archive**
    # 
    # curl -k -H "Authorization: Bearer ae4eae22-3f65-387b-a171-d37eaa366fa8" -F file="@wsdl.zip;type=application/zip" -F additionalProperties=@data.json "https://127.0.0.1:9443/api/am/publisher/v3/apis/import-wsdl"
    string file?;
    # WSDL Definition url
    string url?;
    # Additional attributes specified as a stringified JSON with API's schema
    string additionalProperties?;
    # If 'SOAP' is specified, the API will be created with only one resource 'POST /*' which is to be used for SOAP
    # operations.
    # 
    # If 'HTTP_BINDING' is specified, the API will be created with resources using HTTP binding operations
    # which are extracted from the WSDL.
    string implementationType?;
};

public type WebsubSubscriptionConfiguration record {
    # Toggle enable WebSub subscription configuration
    boolean enable?;
    # Secret key to be used for subscription
    string secret?;
    # The algorithm used for signing
    string signingAlgorithm?;
    # The header uses to send the signature
    string signatureHeader?;
};

public type OperationPolicyDataList record {
    # Number of operation policies returned.
    int count?;
    OperationPolicyData[] list?;
    Pagination pagination?;
};

public type APIProductBusinessInformation record {
    @constraint:String {maxLength: 120}
    string businessOwner?;
    string businessOwnerEmail?;
    @constraint:String {maxLength: 120}
    string technicalOwner?;
    string technicalOwnerEmail?;
};

public type SearchResultList record {
    # Number of results returned.
    int count?;
    record {}[] list?;
    Pagination pagination?;
};

public type ApisImportasyncapiBody record {
    # Definition to upload as a file
    string file?;
    # Definition url
    string url?;
    # Additional attributes specified as a stringified JSON with API's schema
    string additionalProperties?;
};

public type Tenant record {
    # tenant domain
    string domain?;
    # current status of the tenant active/inactive
    string status?;
};

public type ApisValidateasyncapiBody record {
    # AsyncAPI definition url
    string url?;
    # AsyncAPI definition as a file
    string file?;
};

public type SubscriptionPolicy record {
    # Id of policy
    int policyId?;
    # policy uuid
    string uuid?;
    # Name of policy
    @constraint:String {maxLength: 60, minLength: 1}
    string policyName?;
    # Display name of the policy
    @constraint:String {maxLength: 512}
    string displayName?;
    # Description of the policy
    @constraint:String {maxLength: 1024}
    string description?;
    # Indicates whether the policy is deployed successfully or not.
    boolean isDeployed = false;
    # Throttling policy tenant domain id
    int tenantId?;
    # Throttling policy tenant domain
    string tenantDomain?;
    ThrottleLimit defaultLimit;
    # Burst control request count
    int rateLimitCount?;
    # Burst control time unit
    string rateLimitTimeUnit?;
    # Number of subscriptions allowed
    int subscriberCount?;
    # Custom attributes added to the Subscription Throttling Policy
    CustomAttribute[] customAttributes?;
    # This indicates the action to be taken when a user goes beyond the allocated quota. If checked, the user's requests will be dropped. If unchecked, the requests will be allowed to pass through.
    boolean stopOnQuotaReach = false;
    # define whether this is Paid or a Free plan. Allowed values are FREE or COMMERCIAL.
    string billingPlan?;
    SubscriptionThrottlePolicyPermission permissions?;
};

public type WsdlvalidationresponseWsdlinfoEndpoints record {
    # Name of the endpoint
    string name?;
    # Endpoint URL
    string location?;
};

public type APIOperationPolicies record {
    OperationPolicy[] request?;
    OperationPolicy[] response?;
    OperationPolicy[] fault?;
};

public type APIMetadata record {
    string id?;
    string name?;
    string context?;
    string 'version?;
    # If the provider value is not given, the user invoking the API will be used as the provider.
    string provider?;
};

public type TopicList record {
    # Number of Topics returned.
    int count?;
    Topic[] list?;
    Pagination pagination?;
};

public type ExternalStoreList record {
    # Number of external stores returned.
    int count?;
    ExternalStore[] list?;
};

public type TenantList record {
    # Number of tenants returned.
    int count?;
    Tenant[] list?;
    Pagination pagination?;
};

public type ApiinfoAdditionalpropertiesmap record {
    string name?;
    string value?;
    boolean display?;
};

public type Topic record {
    # id
    string id?;
    @constraint:String {maxLength: 50, minLength: 1}
    string name;
    @constraint:String {maxLength: 20}
    string mode;
    @constraint:String {maxLength: 32766}
    string description;
};

public type APIProductOutdatedStatus record {
    # Indicates if an API Product is outdated
    boolean isOutdated?;
};

public type ApiThreatprotectionpolicies record {
    ApiThreatprotectionpoliciesList[] list?;
};

public type EndpointList record {
    # Number of Endpoints returned.
    int count?;
    Endpoint[] list?;
};

public type Comment record {
    string id?;
    @constraint:String {maxLength: 512}
    string content;
    string createdTime?;
    string createdBy?;
    string updatedTime?;
    string category = "general";
    string parentCommentId?;
    string entryPoint?;
    CommenterInfo commenterInfo?;
    CommentList replies?;
};

public type RequestCountLimit record {
    *ThrottleLimitBase;
    # Maximum number of requests allowed
    int requestCount;
};

public type ApiproductidThumbnailBody record {
    # Image to upload
    string file;
};

# Representation of the details of a certificate
public type CertMetadata record {
    string alias?;
    string endpoint?;
};

public type APIInfo record {
    string id?;
    string name?;
    string description?;
    string context?;
    # Map of custom properties of API
    ApiinfoAdditionalproperties[] additionalProperties?;
    record {} additionalPropertiesMap?;
    string 'version?;
    # If the provider value is not given, the user invoking the API will be used as the provider.
    string provider?;
    string 'type?;
    # The audience of the API. Accepted values are PUBLIC, SINGLE
    string audience?;
    string lifeCycleStatus?;
    string workflowStatus?;
    boolean hasThumbnail?;
    string[] securityScheme?;
    string createdTime?;
    string updatedTime?;
    string gatewayVendor?;
    boolean advertiseOnly?;
};

public type Error record {
    int code;
    # Error message.
    string message;
    # A detail description about the error message.
    string description?;
    # Preferably an url with more details about the error.
    string moreInfo?;
    # If there are more than one error list them out.
    # For example, list out validation errors by each field.
    ErrorListItem[] 'error?;
};

public type GraphQLQuery record {
    # Maximum Complexity of the GraphQL query
    int graphQLMaxComplexity?;
    # Maximum Depth of the GraphQL query
    int graphQLMaxDepth?;
};

public type OperationPolicySpecAttribute record {
    # Name of the attibute
    string name?;
    # Display name of the attibute
    string displayName?;
    # Description of the attibute
    string description?;
    # UI validation regex for the attibute
    string validationRegex?;
    # Type of the attibute
    string 'type?;
    # Is this attibute mandetory for the policy
    boolean required?;
    # Default value for the attribute
    string defaultValue?;
    # If the attribute type is enum, this array should contain all the possible values for the enum.
    string[] allowedValues?;
};

public type Scope record {
    # UUID of the Scope. Valid only for shared scopes.
    string id?;
    # name of Scope
    @constraint:String {maxLength: 255, minLength: 1}
    string name;
    # display name of Scope
    @constraint:String {maxLength: 255}
    string displayName?;
    # description of Scope
    @constraint:String {maxLength: 512}
    string description?;
    # role bindings list of the Scope
    string[] bindings?;
    # usage count of Scope
    int usageCount?;
};

public type PostRequestBody record {
    # Content of the comment
    @constraint:String {maxLength: 512}
    string content;
    # Category of the comment
    string category?;
};

public type OperationpoliciesImportBody record {
    # Zip archive consisting on exported policy configuration
    string file;
};

public type SubscriptionPolicyList record {
    # Number of Tiers returned.
    int count?;
    # Array of SubscriptionPolicies
    SubscriptionPolicy[] list?;
    Pagination pagination?;
};

public type WorkflowResponse record {
    # This attribute declares whether this workflow task is approved or rejected.
    string workflowStatus;
    # Attributes that returned after the workflow execution
    string jsonPayload?;
    LifecycleState lifecycleState?;
};

public type API record {
    # UUID of the api registry artifact
    string id?;
    @constraint:String {maxLength: 60, minLength: 1}
    string name;
    @constraint:String {maxLength: 32766}
    string description?;
    @constraint:String {maxLength: 232, minLength: 1}
    string context;
    @constraint:String {maxLength: 30, minLength: 1}
    string 'version;
    # If the provider value is not given user invoking the api will be used as the provider.
    @constraint:String {maxLength: 50}
    string provider?;
    string lifeCycleStatus?;
    WSDLInfo wsdlInfo?;
    string wsdlUrl?;
    boolean responseCachingEnabled?;
    int cacheTimeout?;
    boolean hasThumbnail?;
    boolean isDefaultVersion?;
    boolean isRevision?;
    # UUID of the api registry artifact
    string revisionedApiId?;
    int revisionId?;
    boolean enableSchemaValidation?;
    # The api creation type to be used. Accepted values are HTTP, WS, SOAPTOREST, GRAPHQL, WEBSUB, SSE, WEBHOOK, ASYNC
    string 'type = "HTTP";
    # The audience of the API. Accepted values are PUBLIC, SINGLE
    string audience?;
    # Supported transports for the API (http and/or https).
    string[] transport?;
    string[] tags?;
    string[] policies?;
    # The API level throttling policy selected for the particular API
    string apiThrottlingPolicy?;
    # Name of the Authorization header used for invoking the API. If it is not set, Authorization header name specified
    # in tenant or system level will be used.
    string authorizationHeader?;
    # Types of API security, the current API secured with. It can be either OAuth2 or mutual SSL or both. If
    # it is not set OAuth2 will be set as the security for the current API.
    string[] securityScheme?;
    APIMaxTps maxTps?;
    # The visibility level of the API. Accepts one of the following. PUBLIC, PRIVATE, RESTRICTED.
    string visibility = "PUBLIC";
    # The user roles that are able to access the API in Developer Portal
    string[] visibleRoles?;
    string[] visibleTenants?;
    MediationPolicy[] mediationPolicies?;
    # The subscription availability. Accepts one of the following. CURRENT_TENANT, ALL_TENANTS or SPECIFIC_TENANTS.
    string subscriptionAvailability = "CURRENT_TENANT";
    string[] subscriptionAvailableTenants?;
    # Map of custom properties of API
    ApiinfoAdditionalproperties[] additionalProperties?;
    record {} additionalPropertiesMap?;
    APIMonetizationInfo monetization?;
    # Is the API is restricted to certain set of publishers or creators or is it visible to all the
    # publishers and creators. If the accessControl restriction is none, this API can be modified by all the
    # publishers and creators, if not it can only be viewable/modifiable by certain set of publishers and creators,
    #  based on the restriction.
    string accessControl = "NONE";
    # The user roles that are able to view/modify as API publisher or creator.
    string[] accessControlRoles?;
    APIBusinessInformation businessInformation?;
    # CORS configuration for the API
    APICorsConfiguration corsConfiguration?;
    WebsubSubscriptionConfiguration websubSubscriptionConfiguration?;
    string workflowStatus?;
    string createdTime?;
    string lastUpdatedTime?;
    # Endpoint configuration of the API. This can be used to provide different types of endpoints including Simple REST Endpoints, Loadbalanced and Failover.
    # 
    # `Simple REST Endpoint`
    #   {
    #     "endpoint_type": "http",
    #     "sandbox_endpoints":       {
    #        "url": "https://localhost:9443/am/sample/pizzashack/v3/api/"
    #     },
    #     "production_endpoints":       {
    #        "url": "https://localhost:9443/am/sample/pizzashack/v3/api/"
    #     }
    #   }
    # 
    # `Loadbalanced Endpoint`
    # 
    #   {
    #     "endpoint_type": "load_balance",
    #     "algoCombo": "org.apache.synapse.endpoints.algorithms.RoundRobin",
    #     "sessionManagement": "",
    #     "sandbox_endpoints":       [
    #                 {
    #           "url": "https://localhost:9443/am/sample/pizzashack/v3/api/1"
    #        },
    #                 {
    #           "endpoint_type": "http",
    #           "template_not_supported": false,
    #           "url": "https://localhost:9443/am/sample/pizzashack/v3/api/2"
    #        }
    #     ],
    #     "production_endpoints":       [
    #                 {
    #           "url": "https://localhost:9443/am/sample/pizzashack/v3/api/3"
    #        },
    #                 {
    #           "endpoint_type": "http",
    #           "template_not_supported": false,
    #           "url": "https://localhost:9443/am/sample/pizzashack/v3/api/4"
    #        }
    #     ],
    #     "sessionTimeOut": "",
    #     "algoClassName": "org.apache.synapse.endpoints.algorithms.RoundRobin"
    #   }
    # 
    # `Failover Endpoint`
    # 
    #   {
    #     "production_failovers":[
    #        {
    #           "endpoint_type":"http",
    #           "template_not_supported":false,
    #           "url":"https://localhost:9443/am/sample/pizzashack/v3/api/1"
    #        }
    #     ],
    #     "endpoint_type":"failover",
    #     "sandbox_endpoints":{
    #        "url":"https://localhost:9443/am/sample/pizzashack/v3/api/2"
    #     },
    #     "production_endpoints":{
    #        "url":"https://localhost:9443/am/sample/pizzashack/v3/api/3"
    #     },
    #     "sandbox_failovers":[
    #        {
    #           "endpoint_type":"http",
    #           "template_not_supported":false,
    #           "url":"https://localhost:9443/am/sample/pizzashack/v3/api/4"
    #        }
    #     ]
    #   }
    # 
    # `Default Endpoint`
    # 
    #   {
    #     "endpoint_type":"default",
    #     "sandbox_endpoints":{
    #        "url":"default"
    #     },
    #     "production_endpoints":{
    #        "url":"default"
    #     }
    #   }
    # 
    # `Endpoint from Endpoint Registry`
    #   {
    #     "endpoint_type": "Registry",
    #     "endpoint_id": "{registry-name:entry-name:version}",
    #   }
    record {} endpointConfig?;
    string endpointImplementationType = "ENDPOINT";
    APIScope[] scopes?;
    APIOperations[] operations?;
    ApiThreatprotectionpolicies threatProtectionPolicies?;
    # API categories
    string[] categories?;
    # API Key Managers
    record {} keyManagers?;
    ApiServiceinfo serviceInfo?;
    AdvertiseInfo advertiseInfo?;
    string gatewayVendor?;
    # The gateway type selected for the API policies. Accepts one of the following. wso2/synapse, wso2/choreo-connect.
    string gatewayType?;
    # Supported transports for the async API (http and/or https).
    string[] asyncTransportProtocols?;
};

public type MonetizationInfo record {
    # Flag to indicate the monetization plan
    string monetizationPlan;
    # Map of custom properties related to each monetization plan
    record {} properties;
};

public type ApiThreatprotectionpoliciesList record {
    string policyId?;
    int priority?;
};

public type Claim record {
    string name?;
    string URI?;
    string value?;
};

public type SubscriberInfo record {
    string name?;
    Claim[] claims?;
};

public type SecurityAuditAttribute record {
    boolean isGlobal?;
    boolean overrideGlobal?;
    string apiToken?;
    string collectionId?;
    string baseUrl?;
};

public type DocumentidContentBody1 record {
    # Document to upload
    string file?;
    # Inline content of the document
    string inlineContent?;
};
