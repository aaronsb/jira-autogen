# PSJira.PSJira\Api.ProjectClassificationLevelsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-DefaultProjectClassification**](ProjectClassificationLevelsApi.md#Get-DefaultProjectClassification) | **GET** /rest/api/3/project/{projectIdOrKey}/classification-level/default | Get the default data classification level of a project
[**Remove-DefaultProjectClassification**](ProjectClassificationLevelsApi.md#Remove-DefaultProjectClassification) | **DELETE** /rest/api/3/project/{projectIdOrKey}/classification-level/default | Remove the default data classification level from a project
[**Update-DefaultProjectClassification**](ProjectClassificationLevelsApi.md#Update-DefaultProjectClassification) | **PUT** /rest/api/3/project/{projectIdOrKey}/classification-level/default | Update the default data classification level of a project


<a id="Get-DefaultProjectClassification"></a>
# **Get-DefaultProjectClassification**
> AnyType Get-DefaultProjectClassification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectIdOrKey] <String><br>

Get the default data classification level of a project

Returns the default data classification for a project.  **[Permissions](#permissions) required:**   *  *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.  *  *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.  *  *Administer jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectIdOrKey = "MyProjectIdOrKey" # String | The project ID or project key (case-sensitive).

# Get the default data classification level of a project
try {
    $Result = Get-DefaultProjectClassification -ProjectIdOrKey $ProjectIdOrKey
} catch {
    Write-Host ("Exception occurred when calling Get-DefaultProjectClassification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectIdOrKey** | **String**| The project ID or project key (case-sensitive). | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-DefaultProjectClassification"></a>
# **Remove-DefaultProjectClassification**
> AnyType Remove-DefaultProjectClassification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectIdOrKey] <String><br>

Remove the default data classification level from a project

Remove the default data classification level for a project.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.  *  *Administer jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectIdOrKey = "MyProjectIdOrKey" # String | The project ID or project key (case-sensitive).

# Remove the default data classification level from a project
try {
    $Result = Remove-DefaultProjectClassification -ProjectIdOrKey $ProjectIdOrKey
} catch {
    Write-Host ("Exception occurred when calling Remove-DefaultProjectClassification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectIdOrKey** | **String**| The project ID or project key (case-sensitive). | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-DefaultProjectClassification"></a>
# **Update-DefaultProjectClassification**
> AnyType Update-DefaultProjectClassification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDefaultProjectClassificationBean] <PSCustomObject><br>

Update the default data classification level of a project

Updates the default data classification level for a project.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.  *  *Administer jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectIdOrKey = "MyProjectIdOrKey" # String | The project ID or project key (case-sensitive).
$UpdateDefaultProjectClassificationBean = Initialize-UpdateDefaultProjectClassificationBean -Id "MyId" # UpdateDefaultProjectClassificationBean | 

# Update the default data classification level of a project
try {
    $Result = Update-DefaultProjectClassification -ProjectIdOrKey $ProjectIdOrKey -UpdateDefaultProjectClassificationBean $UpdateDefaultProjectClassificationBean
} catch {
    Write-Host ("Exception occurred when calling Update-DefaultProjectClassification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectIdOrKey** | **String**| The project ID or project key (case-sensitive). | 
 **UpdateDefaultProjectClassificationBean** | [**UpdateDefaultProjectClassificationBean**](UpdateDefaultProjectClassificationBean.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

