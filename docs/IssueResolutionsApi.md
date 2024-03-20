# PSJira.PSJira\Api.IssueResolutionsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Resolution**](IssueResolutionsApi.md#New-Resolution) | **POST** /rest/api/3/resolution | Create resolution
[**Invoke-DeleteResolution**](IssueResolutionsApi.md#Invoke-DeleteResolution) | **DELETE** /rest/api/3/resolution/{id} | Delete resolution
[**Get-Resolution**](IssueResolutionsApi.md#Get-Resolution) | **GET** /rest/api/3/resolution/{id} | Get resolution
[**Get-Resolutions**](IssueResolutionsApi.md#Get-Resolutions) | **GET** /rest/api/3/resolution | Get resolutions
[**Move-Resolutions**](IssueResolutionsApi.md#Move-Resolutions) | **PUT** /rest/api/3/resolution/move | Move resolutions
[**Search-Resolutions**](IssueResolutionsApi.md#Search-Resolutions) | **GET** /rest/api/3/resolution/search | Search resolutions
[**Set-DefaultResolution**](IssueResolutionsApi.md#Set-DefaultResolution) | **PUT** /rest/api/3/resolution/default | Set default resolution
[**Update-Resolution**](IssueResolutionsApi.md#Update-Resolution) | **PUT** /rest/api/3/resolution/{id} | Update resolution


<a id="New-Resolution"></a>
# **New-Resolution**
> ResolutionId New-Resolution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateResolutionDetails] <PSCustomObject><br>

Create resolution

Creates an issue resolution.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$CreateResolutionDetails = Initialize-CreateResolutionDetails -Description "MyDescription" -Name "MyName" # CreateResolutionDetails | 

# Create resolution
try {
    $Result = New-Resolution -CreateResolutionDetails $CreateResolutionDetails
} catch {
    Write-Host ("Exception occurred when calling New-Resolution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateResolutionDetails** | [**CreateResolutionDetails**](CreateResolutionDetails.md)|  | 

### Return type

[**ResolutionId**](ResolutionId.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteResolution"></a>
# **Invoke-DeleteResolution**
> void Invoke-DeleteResolution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReplaceWith] <String><br>

Delete resolution

Deletes an issue resolution.  This operation is [asynchronous](#async). Follow the `location` link in the response to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the issue resolution.
$ReplaceWith = "MyReplaceWith" # String | The ID of the issue resolution that will replace the currently selected resolution. (default to "")

# Delete resolution
try {
    $Result = Invoke-DeleteResolution -Id $Id -ReplaceWith $ReplaceWith
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteResolution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the issue resolution. | 
 **ReplaceWith** | **String**| The ID of the issue resolution that will replace the currently selected resolution. | [default to &quot;&quot;]

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Resolution"></a>
# **Get-Resolution**
> Resolution Get-Resolution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get resolution

Returns an issue resolution value.  **[Permissions](#permissions) required:** Permission to access Jira.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the issue resolution value.

# Get resolution
try {
    $Result = Get-Resolution -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Resolution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the issue resolution value. | 

### Return type

[**Resolution**](Resolution.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Resolutions"></a>
# **Get-Resolutions**
> Resolution[] Get-Resolutions<br>

Get resolutions

Returns a list of all issue resolution values.  **[Permissions](#permissions) required:** Permission to access Jira.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get resolutions
try {
    $Result = Get-Resolutions
} catch {
    Write-Host ("Exception occurred when calling Get-Resolutions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Resolution[]**](Resolution.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Move-Resolutions"></a>
# **Move-Resolutions**
> AnyType Move-Resolutions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReorderIssueResolutionsRequest] <PSCustomObject><br>

Move resolutions

Changes the order of issue resolutions.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ReorderIssueResolutionsRequest = Initialize-ReorderIssueResolutionsRequest -After "MyAfter" -Ids "MyIds" -Position "MyPosition" # ReorderIssueResolutionsRequest | 

# Move resolutions
try {
    $Result = Move-Resolutions -ReorderIssueResolutionsRequest $ReorderIssueResolutionsRequest
} catch {
    Write-Host ("Exception occurred when calling Move-Resolutions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReorderIssueResolutionsRequest** | [**ReorderIssueResolutionsRequest**](ReorderIssueResolutionsRequest.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-Resolutions"></a>
# **Search-Resolutions**
> PageBeanResolutionJsonBean Search-Resolutions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OnlyDefault] <System.Nullable[Boolean]><br>

Search resolutions

Returns a [paginated](#pagination) list of resolutions. The list can contain all resolutions or a subset determined by any combination of these criteria:   *  a list of resolutions IDs.  *  whether the field configuration is a default. This returns resolutions from company-managed (classic) projects only, as there is no concept of default resolutions in team-managed projects.  **[Permissions](#permissions) required:** Permission to access Jira.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StartAt = "MyStartAt" # String | The index of the first item to return in a page of results (page offset). (optional) (default to "0")
$MaxResults = "MyMaxResults" # String | The maximum number of items to return per page. (optional) (default to "50")
$Id = "MyId" # String[] | The list of resolutions IDs to be filtered out (optional)
$OnlyDefault = $true # Boolean | When set to true, return default only, when IDs provided, if none of them is default, return empty page. Default value is false (optional) (default to $false)

# Search resolutions
try {
    $Result = Search-Resolutions -StartAt $StartAt -MaxResults $MaxResults -Id $Id -OnlyDefault $OnlyDefault
} catch {
    Write-Host ("Exception occurred when calling Search-Resolutions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to &quot;0&quot;]
 **MaxResults** | **String**| The maximum number of items to return per page. | [optional] [default to &quot;50&quot;]
 **Id** | [**String[]**](String.md)| The list of resolutions IDs to be filtered out | [optional] 
 **OnlyDefault** | **Boolean**| When set to true, return default only, when IDs provided, if none of them is default, return empty page. Default value is false | [optional] [default to $false]

### Return type

[**PageBeanResolutionJsonBean**](PageBeanResolutionJsonBean.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-DefaultResolution"></a>
# **Set-DefaultResolution**
> AnyType Set-DefaultResolution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetDefaultResolutionRequest] <PSCustomObject><br>

Set default resolution

Sets default issue resolution.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$SetDefaultResolutionRequest = Initialize-SetDefaultResolutionRequest -Id "MyId" # SetDefaultResolutionRequest | 

# Set default resolution
try {
    $Result = Set-DefaultResolution -SetDefaultResolutionRequest $SetDefaultResolutionRequest
} catch {
    Write-Host ("Exception occurred when calling Set-DefaultResolution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SetDefaultResolutionRequest** | [**SetDefaultResolutionRequest**](SetDefaultResolutionRequest.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Resolution"></a>
# **Update-Resolution**
> AnyType Update-Resolution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateResolutionDetails] <PSCustomObject><br>

Update resolution

Updates an issue resolution.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String | The ID of the issue resolution.
$UpdateResolutionDetails = Initialize-UpdateResolutionDetails -Description "MyDescription" -Name "MyName" # UpdateResolutionDetails | 

# Update resolution
try {
    $Result = Update-Resolution -Id $Id -UpdateResolutionDetails $UpdateResolutionDetails
} catch {
    Write-Host ("Exception occurred when calling Update-Resolution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the issue resolution. | 
 **UpdateResolutionDetails** | [**UpdateResolutionDetails**](UpdateResolutionDetails.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

