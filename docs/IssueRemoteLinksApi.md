# PSJira.PSJira\Api.IssueRemoteLinksApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OrUpdateRemoteIssueLink**](IssueRemoteLinksApi.md#New-OrUpdateRemoteIssueLink) | **POST** /rest/api/3/issue/{issueIdOrKey}/remotelink | Create or update remote issue link
[**Invoke-DeleteRemoteIssueLinkByGlobalId**](IssueRemoteLinksApi.md#Invoke-DeleteRemoteIssueLinkByGlobalId) | **DELETE** /rest/api/3/issue/{issueIdOrKey}/remotelink | Delete remote issue link by global ID
[**Invoke-DeleteRemoteIssueLinkById**](IssueRemoteLinksApi.md#Invoke-DeleteRemoteIssueLinkById) | **DELETE** /rest/api/3/issue/{issueIdOrKey}/remotelink/{linkId} | Delete remote issue link by ID
[**Get-RemoteIssueLinkById**](IssueRemoteLinksApi.md#Get-RemoteIssueLinkById) | **GET** /rest/api/3/issue/{issueIdOrKey}/remotelink/{linkId} | Get remote issue link by ID
[**Get-RemoteIssueLinks**](IssueRemoteLinksApi.md#Get-RemoteIssueLinks) | **GET** /rest/api/3/issue/{issueIdOrKey}/remotelink | Get remote issue links
[**Update-RemoteIssueLink**](IssueRemoteLinksApi.md#Update-RemoteIssueLink) | **PUT** /rest/api/3/issue/{issueIdOrKey}/remotelink/{linkId} | Update remote issue link by ID


<a id="New-OrUpdateRemoteIssueLink"></a>
# **New-OrUpdateRemoteIssueLink**
> RemoteIssueLinkIdentifies New-OrUpdateRemoteIssueLink<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoteIssueLinkRequest] <PSCustomObject><br>

Create or update remote issue link

Creates or updates a remote issue link for an issue.  If a `globalId` is provided and a remote issue link with that global ID is found it is updated. Any fields without values in the request are set to null. Otherwise, the remote issue link is created.  This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

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
$RemoteIssueLinkRequest = Initialize-RemoteIssueLinkRequest -Application  -GlobalId "MyGlobalId" -Object  -Relationship "MyRelationship" # RemoteIssueLinkRequest | 

# Create or update remote issue link
try {
    $Result = New-OrUpdateRemoteIssueLink -IssueIdOrKey $IssueIdOrKey -RemoteIssueLinkRequest $RemoteIssueLinkRequest
} catch {
    Write-Host ("Exception occurred when calling New-OrUpdateRemoteIssueLink: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key of the issue. | 
 **RemoteIssueLinkRequest** | [**RemoteIssueLinkRequest**](RemoteIssueLinkRequest.md)|  | 

### Return type

[**RemoteIssueLinkIdentifies**](RemoteIssueLinkIdentifies.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteRemoteIssueLinkByGlobalId"></a>
# **Invoke-DeleteRemoteIssueLinkByGlobalId**
> void Invoke-DeleteRemoteIssueLinkByGlobalId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GlobalId] <String><br>

Delete remote issue link by global ID

Deletes the remote issue link from the issue using the link's global ID. Where the global ID includes reserved URL characters these must be escaped in the request. For example, pass `system=http://www.mycompany.com/support&id=1` as `system%3Dhttp%3A%2F%2Fwww.mycompany.com%2Fsupport%26id%3D1`.  This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is implemented, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "10000" # String | The ID or key of the issue.
$GlobalId = "system=http://www.mycompany.com/support&id=1" # String | The global ID of a remote issue link.

# Delete remote issue link by global ID
try {
    $Result = Invoke-DeleteRemoteIssueLinkByGlobalId -IssueIdOrKey $IssueIdOrKey -GlobalId $GlobalId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteRemoteIssueLinkByGlobalId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key of the issue. | 
 **GlobalId** | **String**| The global ID of a remote issue link. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteRemoteIssueLinkById"></a>
# **Invoke-DeleteRemoteIssueLinkById**
> void Invoke-DeleteRemoteIssueLinkById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkId] <String><br>

Delete remote issue link by ID

Deletes a remote issue link from an issue.  This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects*, *Edit issues*, and *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "10000" # String | The ID or key of the issue.
$LinkId = "10000" # String | The ID of a remote issue link.

# Delete remote issue link by ID
try {
    $Result = Invoke-DeleteRemoteIssueLinkById -IssueIdOrKey $IssueIdOrKey -LinkId $LinkId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteRemoteIssueLinkById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key of the issue. | 
 **LinkId** | **String**| The ID of a remote issue link. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-RemoteIssueLinkById"></a>
# **Get-RemoteIssueLinkById**
> RemoteIssueLink Get-RemoteIssueLinkById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkId] <String><br>

Get remote issue link by ID

Returns a remote issue link for an issue.  This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

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
$LinkId = "MyLinkId" # String | The ID of the remote issue link.

# Get remote issue link by ID
try {
    $Result = Get-RemoteIssueLinkById -IssueIdOrKey $IssueIdOrKey -LinkId $LinkId
} catch {
    Write-Host ("Exception occurred when calling Get-RemoteIssueLinkById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key of the issue. | 
 **LinkId** | **String**| The ID of the remote issue link. | 

### Return type

[**RemoteIssueLink**](RemoteIssueLink.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-RemoteIssueLinks"></a>
# **Get-RemoteIssueLinks**
> RemoteIssueLink Get-RemoteIssueLinks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GlobalId] <String><br>

Get remote issue links

Returns the remote issue links for an issue. When a remote issue link global ID is provided the record with that global ID is returned, otherwise all remote issue links are returned. Where a global ID includes reserved URL characters these must be escaped in the request. For example, pass `system=http://www.mycompany.com/support&id=1` as `system%3Dhttp%3A%2F%2Fwww.mycompany.com%2Fsupport%26id%3D1`.  This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "10000" # String | The ID or key of the issue.
$GlobalId = "MyGlobalId" # String | The global ID of the remote issue link. (optional)

# Get remote issue links
try {
    $Result = Get-RemoteIssueLinks -IssueIdOrKey $IssueIdOrKey -GlobalId $GlobalId
} catch {
    Write-Host ("Exception occurred when calling Get-RemoteIssueLinks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key of the issue. | 
 **GlobalId** | **String**| The global ID of the remote issue link. | [optional] 

### Return type

[**RemoteIssueLink**](RemoteIssueLink.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-RemoteIssueLink"></a>
# **Update-RemoteIssueLink**
> AnyType Update-RemoteIssueLink<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoteIssueLinkRequest] <PSCustomObject><br>

Update remote issue link by ID

Updates a remote issue link for an issue.  Note: Fields without values in the request are set to null.  This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueIdOrKey = "10000" # String | The ID or key of the issue.
$LinkId = "10000" # String | The ID of the remote issue link.
$RemoteIssueLinkRequest = Initialize-RemoteIssueLinkRequest -Application  -GlobalId "MyGlobalId" -Object  -Relationship "MyRelationship" # RemoteIssueLinkRequest | 

# Update remote issue link by ID
try {
    $Result = Update-RemoteIssueLink -IssueIdOrKey $IssueIdOrKey -LinkId $LinkId -RemoteIssueLinkRequest $RemoteIssueLinkRequest
} catch {
    Write-Host ("Exception occurred when calling Update-RemoteIssueLink: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueIdOrKey** | **String**| The ID or key of the issue. | 
 **LinkId** | **String**| The ID of the remote issue link. | 
 **RemoteIssueLinkRequest** | [**RemoteIssueLinkRequest**](RemoteIssueLinkRequest.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

