# PSJira.PSJira\Api.IssueLinkTypesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-IssueLinkType**](IssueLinkTypesApi.md#New-IssueLinkType) | **POST** /rest/api/3/issueLinkType | Create issue link type
[**Invoke-DeleteIssueLinkType**](IssueLinkTypesApi.md#Invoke-DeleteIssueLinkType) | **DELETE** /rest/api/3/issueLinkType/{issueLinkTypeId} | Delete issue link type
[**Get-IssueLinkType**](IssueLinkTypesApi.md#Get-IssueLinkType) | **GET** /rest/api/3/issueLinkType/{issueLinkTypeId} | Get issue link type
[**Get-IssueLinkTypes**](IssueLinkTypesApi.md#Get-IssueLinkTypes) | **GET** /rest/api/3/issueLinkType | Get issue link types
[**Update-IssueLinkType**](IssueLinkTypesApi.md#Update-IssueLinkType) | **PUT** /rest/api/3/issueLinkType/{issueLinkTypeId} | Update issue link type


<a id="New-IssueLinkType"></a>
# **New-IssueLinkType**
> IssueLinkType New-IssueLinkType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueLinkType] <PSCustomObject><br>

Create issue link type

Creates an issue link type. Use this operation to create descriptions of the reasons why issues are linked. The issue link type consists of a name and descriptions for a link's inward and outward relationships.  To use this operation, the site must have [issue linking](https://confluence.atlassian.com/x/yoXKM) enabled.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueLinkType = Initialize-IssueLinkType -Id "MyId" -Inward "MyInward" -Name "MyName" -Outward "MyOutward" -Self "MySelf" # IssueLinkType | 

# Create issue link type
try {
    $Result = New-IssueLinkType -IssueLinkType $IssueLinkType
} catch {
    Write-Host ("Exception occurred when calling New-IssueLinkType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueLinkType** | [**IssueLinkType**](IssueLinkType.md)|  | 

### Return type

[**IssueLinkType**](IssueLinkType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteIssueLinkType"></a>
# **Invoke-DeleteIssueLinkType**
> void Invoke-DeleteIssueLinkType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueLinkTypeId] <String><br>

Delete issue link type

Deletes an issue link type.  To use this operation, the site must have [issue linking](https://confluence.atlassian.com/x/yoXKM) enabled.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueLinkTypeId = "MyIssueLinkTypeId" # String | The ID of the issue link type.

# Delete issue link type
try {
    $Result = Invoke-DeleteIssueLinkType -IssueLinkTypeId $IssueLinkTypeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteIssueLinkType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueLinkTypeId** | **String**| The ID of the issue link type. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IssueLinkType"></a>
# **Get-IssueLinkType**
> IssueLinkType Get-IssueLinkType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueLinkTypeId] <String><br>

Get issue link type

Returns an issue link type.  To use this operation, the site must have [issue linking](https://confluence.atlassian.com/x/yoXKM) enabled.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for a project in the site.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueLinkTypeId = "MyIssueLinkTypeId" # String | The ID of the issue link type.

# Get issue link type
try {
    $Result = Get-IssueLinkType -IssueLinkTypeId $IssueLinkTypeId
} catch {
    Write-Host ("Exception occurred when calling Get-IssueLinkType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueLinkTypeId** | **String**| The ID of the issue link type. | 

### Return type

[**IssueLinkType**](IssueLinkType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IssueLinkTypes"></a>
# **Get-IssueLinkTypes**
> IssueLinkTypes Get-IssueLinkTypes<br>

Get issue link types

Returns a list of all issue link types.  To use this operation, the site must have [issue linking](https://confluence.atlassian.com/x/yoXKM) enabled.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for a project in the site.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get issue link types
try {
    $Result = Get-IssueLinkTypes
} catch {
    Write-Host ("Exception occurred when calling Get-IssueLinkTypes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IssueLinkTypes**](IssueLinkTypes.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-IssueLinkType"></a>
# **Update-IssueLinkType**
> IssueLinkType Update-IssueLinkType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueLinkTypeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueLinkType] <PSCustomObject><br>

Update issue link type

Updates an issue link type.  To use this operation, the site must have [issue linking](https://confluence.atlassian.com/x/yoXKM) enabled.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IssueLinkTypeId = "MyIssueLinkTypeId" # String | The ID of the issue link type.
$IssueLinkType = Initialize-IssueLinkType -Id "MyId" -Inward "MyInward" -Name "MyName" -Outward "MyOutward" -Self "MySelf" # IssueLinkType | 

# Update issue link type
try {
    $Result = Update-IssueLinkType -IssueLinkTypeId $IssueLinkTypeId -IssueLinkType $IssueLinkType
} catch {
    Write-Host ("Exception occurred when calling Update-IssueLinkType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IssueLinkTypeId** | **String**| The ID of the issue link type. | 
 **IssueLinkType** | [**IssueLinkType**](IssueLinkType.md)|  | 

### Return type

[**IssueLinkType**](IssueLinkType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

