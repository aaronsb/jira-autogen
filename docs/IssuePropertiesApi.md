# PSJira.PSJira\Api.IssuePropertiesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-BulkDeleteIssueProperty**](IssuePropertiesApi.md#Invoke-BulkDeleteIssueProperty) | **DELETE** /rest/api/3/issue/properties/{propertyKey} | Bulk delete issue property
[**Invoke-BulkSetIssuePropertiesByIssue**](IssuePropertiesApi.md#Invoke-BulkSetIssuePropertiesByIssue) | **POST** /rest/api/3/issue/properties/multi | Bulk set issue properties by issue
[**Invoke-BulkSetIssueProperty**](IssuePropertiesApi.md#Invoke-BulkSetIssueProperty) | **PUT** /rest/api/3/issue/properties/{propertyKey} | Bulk set issue property
[**Invoke-BulkSetIssuesPropertiesList**](IssuePropertiesApi.md#Invoke-BulkSetIssuesPropertiesList) | **POST** /rest/api/3/issue/properties | Bulk set issues properties by list
[**Invoke-DeleteIssueProperty**](IssuePropertiesApi.md#Invoke-DeleteIssueProperty) | **DELETE** /rest/api/3/issue/{issueIdOrKey}/properties/{propertyKey} | Delete issue property
[**Get-IssueProperty**](IssuePropertiesApi.md#Get-IssueProperty) | **GET** /rest/api/3/issue/{issueIdOrKey}/properties/{propertyKey} | Get issue property
[**Get-IssuePropertyKeys**](IssuePropertiesApi.md#Get-IssuePropertyKeys) | **GET** /rest/api/3/issue/{issueIdOrKey}/properties | Get issue property keys
[**Set-IssueProperty**](IssuePropertiesApi.md#Set-IssueProperty) | **PUT** /rest/api/3/issue/{issueIdOrKey}/properties/{propertyKey} | Set issue property


<a id="Invoke-BulkDeleteIssueProperty"></a>
# **Invoke-BulkDeleteIssueProperty**
> void Invoke-BulkDeleteIssueProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueFilterForBulkPropertyDelete] <PSCustomObject><br>

Bulk delete issue property

Deletes a property value from multiple issues. The issues to be updated can be specified by filter criteria.  The criteria the filter used to identify eligible issues are:   *  `entityIds` Only issues from this list are eligible.  *  `currentValue` Only issues with the property set to this value are eligible.  If both criteria is specified, they are joined with the logical *AND*: only issues that satisfy both criteria are considered eligible.  If no filter criteria are specified, all the issues visible to the user and where the user has the EDIT\_ISSUES permission for the issue are considered eligible.  This operation is:   *  transactional, either the property is deleted from all eligible issues or, when errors occur, no properties are deleted.  *  [asynchronous](#async). Follow the `location` link in the response to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:**   *  *Browse projects* [ project permission](https://confluence.atlassian.com/x/yodKLg) for each project containing issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  *Edit issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for each issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PropertyKey = "MyPropertyKey" # String | The key of the property.
$IssueFilterForBulkPropertyDelete = Initialize-IssueFilterForBulkPropertyDelete -CurrentValue  -EntityIds 0 # IssueFilterForBulkPropertyDelete | 

# Bulk delete issue property
try {
    $Result = Invoke-BulkDeleteIssueProperty -PropertyKey $PropertyKey -IssueFilterForBulkPropertyDelete $IssueFilterForBulkPropertyDelete
} catch {
    Write-Host ("Exception occurred when calling Invoke-BulkDeleteIssueProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PropertyKey** | **String**| The key of the property. | 
 **IssueFilterForBulkPropertyDelete** | [**IssueFilterForBulkPropertyDelete**](IssueFilterForBulkPropertyDelete.md)|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-BulkSetIssuePropertiesByIssue"></a>
# **Invoke-BulkSetIssuePropertiesByIssue**
> void Invoke-BulkSetIssuePropertiesByIssue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultiIssueEntityProperties] <PSCustomObject><br>

Bulk set issue properties by issue

Sets or updates entity property values on issues. Up to 10 entity properties can be specified for each issue and up to 100 issues included in the request.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON.  This operation is:   *  [asynchronous](#async). Follow the `location` link in the response to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain subsequent updates.  *  non-transactional. Updating some entities may fail. Such information will available in the task result.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Edit issues* [project permissions](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$JsonNode = Initialize-JsonNode -Array $false -BigDecimal $false -BigInteger $false -BigIntegerValue 0 -Binary $false -BinaryValue  -Boolean $false -BooleanValue $false -ContainerNode $false -DecimalValue 0 -Double $false -DoubleValue 0 -Elements  -FieldNames  -Fields  -FloatingPointNumber $false -Int $false -IntValue 0 -IntegralNumber $false -Long $false -LongValue 0 -MissingNode $false -VarNull $false -Number $false -NumberType "INT" -NumberValue 0 -Object $false -Pojo $false -TextValue "MyTextValue" -Textual $false -ValueAsBoolean $false -ValueAsDouble 0 -ValueAsInt 0 -ValueAsLong 0 -ValueAsText "MyValueAsText" -ValueNode $false
$IssueEntityPropertiesForMultiUpdate = Initialize-IssueEntityPropertiesForMultiUpdate -IssueID 0 -Properties @{ key_example = $JsonNode }

$MultiIssueEntityProperties = Initialize-MultiIssueEntityProperties -Issues $IssueEntityPropertiesForMultiUpdate # MultiIssueEntityProperties | Details of the issue properties to be set or updated. Note that if an issue is not found, it is ignored.

# Bulk set issue properties by issue
try {
    $Result = Invoke-BulkSetIssuePropertiesByIssue -MultiIssueEntityProperties $MultiIssueEntityProperties
} catch {
    Write-Host ("Exception occurred when calling Invoke-BulkSetIssuePropertiesByIssue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MultiIssueEntityProperties** | [**MultiIssueEntityProperties**](MultiIssueEntityProperties.md)| Details of the issue properties to be set or updated. Note that if an issue is not found, it is ignored. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-BulkSetIssueProperty"></a>
# **Invoke-BulkSetIssueProperty**
> void Invoke-BulkSetIssueProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BulkIssuePropertyUpdateRequest] <PSCustomObject><br>

Bulk set issue property

Sets a property value on multiple issues.  The value set can be a constant or determined by a [Jira expression](https://developer.atlassian.com/cloud/jira/platform/jira-expressions/). Expressions must be computable with constant complexity when applied to a set of issues. Expressions must also comply with the [restrictions](https://developer.atlassian.com/cloud/jira/platform/jira-expressions/#restrictions) that apply to all Jira expressions.  The issues to be updated can be specified by a filter.  The filter identifies issues eligible for update using these criteria:   *  `entityIds` Only issues from this list are eligible.  *  `currentValue` Only issues with the property set to this value are eligible.  *  `hasProperty`:           *  If *true*, only issues with the property are eligible.      *  If *false*, only issues without the property are eligible.  If more than one criteria is specified, they are joined with the logical *AND*: only issues that satisfy all criteria are eligible.  If an invalid combination of criteria is provided, an error is returned. For example, specifying a `currentValue` and `hasProperty` as *false* would not match any issues (because without the property the property cannot have a value).  The filter is optional. Without the filter all the issues visible to the user and where the user has the EDIT\_ISSUES permission for the issue are considered eligible.  This operation is:   *  transactional, either all eligible issues are updated or, when errors occur, none are updated.  *  [asynchronous](#async). Follow the `location` link in the response to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for each project containing issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  *Edit issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for each issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PropertyKey = "MyPropertyKey" # String | The key of the property. The maximum length is 255 characters.
$IssueFilterForBulkPropertySet = Initialize-IssueFilterForBulkPropertySet -CurrentValue  -EntityIds 0 -HasProperty $false
$BulkIssuePropertyUpdateRequest = Initialize-BulkIssuePropertyUpdateRequest -Expression "MyExpression" -VarFilter $IssueFilterForBulkPropertySet -Value # BulkIssuePropertyUpdateRequest | 

# Bulk set issue property
try {
    $Result = Invoke-BulkSetIssueProperty -PropertyKey $PropertyKey -BulkIssuePropertyUpdateRequest $BulkIssuePropertyUpdateRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-BulkSetIssueProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PropertyKey** | **String**| The key of the property. The maximum length is 255 characters. | 
 **BulkIssuePropertyUpdateRequest** | [**BulkIssuePropertyUpdateRequest**](BulkIssuePropertyUpdateRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-BulkSetIssuesPropertiesList"></a>
# **Invoke-BulkSetIssuesPropertiesList**
> void Invoke-BulkSetIssuesPropertiesList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueEntityProperties] <PSCustomObject><br>

Bulk set issues properties by list

Sets or updates a list of entity property values on issues. A list of up to 10 entity properties can be specified along with up to 10,000 issues on which to set or update that list of entity properties.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON. The maximum length of single issue property value is 32768 characters. This operation can be accessed anonymously.  This operation is:   *  transactional, either all properties are updated in all eligible issues or, when errors occur, no properties are updated.  *  [asynchronous](#async). Follow the `location` link in the response to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Edit issues* [project permissions](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$JsonNode = Initialize-JsonNode -Array $false -BigDecimal $false -BigInteger $false -BigIntegerValue 0 -Binary $false -BinaryValue  -Boolean $false -BooleanValue $false -ContainerNode $false -DecimalValue 0 -Double $false -DoubleValue 0 -Elements  -FieldNames  -Fields  -FloatingPointNumber $false -Int $false -IntValue 0 -IntegralNumber $false -Long $false -LongValue 0 -MissingNode $false -VarNull $false -Number $false -NumberType "INT" -NumberValue 0 -Object $false -Pojo $false -TextValue "MyTextValue" -Textual $false -ValueAsBoolean $false -ValueAsDouble 0 -ValueAsInt 0 -ValueAsLong 0 -ValueAsText "MyValueAsText" -ValueNode $false
$IssueEntityProperties = Initialize-IssueEntityProperties -EntitiesIds 0 -Properties @{ key_example = $JsonNode } # IssueEntityProperties | Issue properties to be set or updated with values.

# Bulk set issues properties by list
try {
    $Result = Invoke-BulkSetIssuesPropertiesList -IssueEntityProperties $IssueEntityProperties
} catch {
    Write-Host ("Exception occurred when calling Invoke-BulkSetIssuesPropertiesList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueEntityProperties** | [**IssueEntityProperties**](IssueEntityProperties.md)| Issue properties to be set or updated with values. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteIssueProperty"></a>
# **Invoke-DeleteIssueProperty**
> void Invoke-DeleteIssueProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>

Delete issue property

Deletes an issue's property.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Edit issues* [project permissions](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "MyIssueIdOrKey" # String | The key or ID of the issue.
$PropertyKey = "MyPropertyKey" # String | The key of the property.

# Delete issue property
try {
    $Result = Invoke-DeleteIssueProperty -IssueIdOrKey $IssueIdOrKey -PropertyKey $PropertyKey
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteIssueProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The key or ID of the issue. | 
 **PropertyKey** | **String**| The key of the property. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IssueProperty"></a>
# **Get-IssueProperty**
> EntityProperty Get-IssueProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>

Get issue property

Returns the key and value of an issue's property.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "MyIssueIdOrKey" # String | The key or ID of the issue.
$PropertyKey = "MyPropertyKey" # String | The key of the property.

# Get issue property
try {
    $Result = Get-IssueProperty -IssueIdOrKey $IssueIdOrKey -PropertyKey $PropertyKey
} catch {
    Write-Host ("Exception occurred when calling Get-IssueProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The key or ID of the issue. | 
 **PropertyKey** | **String**| The key of the property. | 

### Return type

[**EntityProperty**](EntityProperty.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IssuePropertyKeys"></a>
# **Get-IssuePropertyKeys**
> PropertyKeys Get-IssuePropertyKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>

Get issue property keys

Returns the URLs and keys of an issue's properties.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** Property details are only returned where the user has:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "MyIssueIdOrKey" # String | The key or ID of the issue.

# Get issue property keys
try {
    $Result = Get-IssuePropertyKeys -IssueIdOrKey $IssueIdOrKey
} catch {
    Write-Host ("Exception occurred when calling Get-IssuePropertyKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The key or ID of the issue. | 

### Return type

[**PropertyKeys**](PropertyKeys.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-IssueProperty"></a>
# **Set-IssueProperty**
> AnyType Set-IssueProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Nullable[AnyType]><br>

Set issue property

Sets the value of an issue's property. Use this resource to store custom data against an issue.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Edit issues* [project permissions](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "MyIssueIdOrKey" # String | The ID or key of the issue.
$PropertyKey = "MyPropertyKey" # String | The key of the issue property. The maximum length is 255 characters.
$Body =  # AnyType | The value of the property. The value has to be a valid, non-empty [JSON](https://tools.ietf.org/html/rfc4627) value. The maximum length of the property value is 32768 bytes.

# Set issue property
try {
    $Result = Set-IssueProperty -IssueIdOrKey $IssueIdOrKey -PropertyKey $PropertyKey -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Set-IssueProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key of the issue. | 
 **PropertyKey** | **String**| The key of the issue property. The maximum length is 255 characters. | 
 **Body** | **AnyType**| The value of the property. The value has to be a valid, non-empty [JSON](https://tools.ietf.org/html/rfc4627) value. The maximum length of the property value is 32768 bytes. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

