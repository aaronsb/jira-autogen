# PSJira.PSJira\Api.PermissionsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AllPermissions**](PermissionsApi.md#Get-AllPermissions) | **GET** /rest/api/3/permissions | Get all permissions
[**Get-BulkPermissions**](PermissionsApi.md#Get-BulkPermissions) | **POST** /rest/api/3/permissions/check | Get bulk permissions
[**Get-MyPermissions**](PermissionsApi.md#Get-MyPermissions) | **GET** /rest/api/3/mypermissions | Get my permissions
[**Get-PermittedProjects**](PermissionsApi.md#Get-PermittedProjects) | **POST** /rest/api/3/permissions/project | Get permitted projects


<a id="Get-AllPermissions"></a>
# **Get-AllPermissions**
> Permissions Get-AllPermissions<br>

Get all permissions

Returns all permissions, including:   *  global permissions.  *  project permissions.  *  global permissions added by plugins.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get all permissions
try {
    $Result = Get-AllPermissions
} catch {
    Write-Host ("Exception occurred when calling Get-AllPermissions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Permissions**](Permissions.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BulkPermissions"></a>
# **Get-BulkPermissions**
> BulkPermissionGrants Get-BulkPermissions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BulkPermissionsRequestBean] <PSCustomObject><br>

Get bulk permissions

Returns:   *  for a list of global permissions, the global permissions granted to a user.  *  for a list of project permissions and lists of projects and issues, for each project permission a list of the projects and issues a user can access or manipulate.  If no account ID is provided, the operation returns details for the logged in user.  Note that:   *  Invalid project and issue IDs are ignored.  *  A maximum of 1000 projects and 1000 issues can be checked.  *  Null values in `globalPermissions`, `projectPermissions`, `projectPermissions.projects`, and `projectPermissions.issues` are ignored.  *  Empty strings in `projectPermissions.permissions` are ignored.  **Deprecation notice:** The required OAuth 2.0 scopes will be updated on June 15, 2024.   *  **Classic**: `read:jira-work`  *  **Granular**: `read:permission:jira`  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) to check the permissions for other users, otherwise none. However, Connect apps can make a call from the app server to the product to obtain permission details for any user, without admin permission. This Connect app ability doesn't apply to calls made using AP.request() in a browser.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$BulkProjectPermissions = Initialize-BulkProjectPermissions -Issues 0 -Permissions "MyPermissions" -Projects 0
$BulkPermissionsRequestBean = Initialize-BulkPermissionsRequestBean -AccountId "MyAccountId" -GlobalPermissions "MyGlobalPermissions" -ProjectPermissions $BulkProjectPermissions # BulkPermissionsRequestBean | Details of the permissions to check.

# Get bulk permissions
try {
    $Result = Get-BulkPermissions -BulkPermissionsRequestBean $BulkPermissionsRequestBean
} catch {
    Write-Host ("Exception occurred when calling Get-BulkPermissions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BulkPermissionsRequestBean** | [**BulkPermissionsRequestBean**](BulkPermissionsRequestBean.md)| Details of the permissions to check. | 

### Return type

[**BulkPermissionGrants**](BulkPermissionGrants.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MyPermissions"></a>
# **Get-MyPermissions**
> Permissions Get-MyPermissions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Permissions] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectUuid] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectConfigurationUuid] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommentId] <String><br>

Get my permissions

Returns a list of permissions indicating which permissions the user has. Details of the user's permissions can be obtained in a global, project, issue or comment context.  The user is reported as having a project permission:   *  in the global context, if the user has the project permission in any project.  *  for a project, where the project permission is determined using issue data, if the user meets the permission's criteria for any issue in the project. Otherwise, if the user has the project permission in the project.  *  for an issue, where a project permission is determined using issue data, if the user has the permission in the issue. Otherwise, if the user has the project permission in the project containing the issue.  *  for a comment, where the user has both the permission to browse the comment and the project permission for the comment's parent issue. Only the BROWSE\_PROJECTS permission is supported. If a `commentId` is provided whose `permissions` does not equal BROWSE\_PROJECTS, a 400 error will be returned.  This means that users may be shown as having an issue permission (such as EDIT\_ISSUES) in the global context or a project context but may not have the permission for any or all issues. For example, if Reporters have the EDIT\_ISSUES permission a user would be shown as having this permission in the global context or the context of a project, because any user can be a reporter. However, if they are not the user who reported the issue queried they would not have EDIT\_ISSUES permission for that issue.  Global permissions are unaffected by context.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectKey = "MyProjectKey" # String | The key of project. Ignored if `projectId` is provided. (optional)
$ProjectId = "MyProjectId" # String | The ID of project. (optional)
$IssueKey = "MyIssueKey" # String | The key of the issue. Ignored if `issueId` is provided. (optional)
$IssueId = "MyIssueId" # String | The ID of the issue. (optional)
$Permissions = "BROWSE_PROJECTS,EDIT_ISSUES" # String | A list of permission keys. (Required) This parameter accepts a comma-separated list. To get the list of available permissions, use [Get all permissions](#api-rest-api-3-permissions-get). (optional)
$ProjectUuid = "MyProjectUuid" # String |  (optional)
$ProjectConfigurationUuid = "MyProjectConfigurationUuid" # String |  (optional)
$CommentId = "MyCommentId" # String | The ID of the comment. (optional)

# Get my permissions
try {
    $Result = Get-MyPermissions -ProjectKey $ProjectKey -ProjectId $ProjectId -IssueKey $IssueKey -IssueId $IssueId -Permissions $Permissions -ProjectUuid $ProjectUuid -ProjectConfigurationUuid $ProjectConfigurationUuid -CommentId $CommentId
} catch {
    Write-Host ("Exception occurred when calling Get-MyPermissions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectKey** | **String**| The key of project. Ignored if &#x60;projectId&#x60; is provided. | [optional] 
 **ProjectId** | **String**| The ID of project. | [optional] 
 **IssueKey** | **String**| The key of the issue. Ignored if &#x60;issueId&#x60; is provided. | [optional] 
 **IssueId** | **String**| The ID of the issue. | [optional] 
 **Permissions** | **String**| A list of permission keys. (Required) This parameter accepts a comma-separated list. To get the list of available permissions, use [Get all permissions](#api-rest-api-3-permissions-get). | [optional] 
 **ProjectUuid** | **String**|  | [optional] 
 **ProjectConfigurationUuid** | **String**|  | [optional] 
 **CommentId** | **String**| The ID of the comment. | [optional] 

### Return type

[**Permissions**](Permissions.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PermittedProjects"></a>
# **Get-PermittedProjects**
> PermittedProjects Get-PermittedProjects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PermissionsKeysBean] <PSCustomObject><br>

Get permitted projects

Returns all the projects where the user is granted a list of project permissions.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PermissionsKeysBean = Initialize-PermissionsKeysBean -Permissions "MyPermissions" # PermissionsKeysBean | 

# Get permitted projects
try {
    $Result = Get-PermittedProjects -PermissionsKeysBean $PermissionsKeysBean
} catch {
    Write-Host ("Exception occurred when calling Get-PermittedProjects: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PermissionsKeysBean** | [**PermissionsKeysBean**](PermissionsKeysBean.md)|  | 

### Return type

[**PermittedProjects**](PermittedProjects.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

