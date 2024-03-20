# PSJira.PSJira\Api.ProjectEmailApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ProjectEmail**](ProjectEmailApi.md#Get-ProjectEmail) | **GET** /rest/api/3/project/{projectId}/email | Get project&#39;s sender email
[**Update-ProjectEmail**](ProjectEmailApi.md#Update-ProjectEmail) | **PUT** /rest/api/3/project/{projectId}/email | Set project&#39;s sender email


<a id="Get-ProjectEmail"></a>
# **Get-ProjectEmail**
> ProjectEmailAddress Get-ProjectEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <Int64><br>

Get project's sender email

Returns the [project's sender email address](https://confluence.atlassian.com/x/dolKLg).  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectId = 789 # Int64 | The project ID.

# Get project's sender email
try {
    $Result = Get-ProjectEmail -ProjectId $ProjectId
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **Int64**| The project ID. | 

### Return type

[**ProjectEmailAddress**](ProjectEmailAddress.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ProjectEmail"></a>
# **Update-ProjectEmail**
> AnyType Update-ProjectEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectEmailAddress] <PSCustomObject><br>

Set project's sender email

Sets the [project's sender email address](https://confluence.atlassian.com/x/dolKLg).  If `emailAddress` is an empty string, the default email address is restored.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectId = 789 # Int64 | The project ID.
$ProjectEmailAddress = Initialize-ProjectEmailAddress -EmailAddress "MyEmailAddress" -EmailAddressStatus "MyEmailAddressStatus" # ProjectEmailAddress | The project's sender email address to be set.

# Set project's sender email
try {
    $Result = Update-ProjectEmail -ProjectId $ProjectId -ProjectEmailAddress $ProjectEmailAddress
} catch {
    Write-Host ("Exception occurred when calling Update-ProjectEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **Int64**| The project ID. | 
 **ProjectEmailAddress** | [**ProjectEmailAddress**](ProjectEmailAddress.md)| The project&#39;s sender email address to be set. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

