# PSJira.PSJira\Api.ScreenSchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-ScreenScheme**](ScreenSchemesApi.md#New-ScreenScheme) | **POST** /rest/api/3/screenscheme | Create screen scheme
[**Invoke-DeleteScreenScheme**](ScreenSchemesApi.md#Invoke-DeleteScreenScheme) | **DELETE** /rest/api/3/screenscheme/{screenSchemeId} | Delete screen scheme
[**Get-ScreenSchemes**](ScreenSchemesApi.md#Get-ScreenSchemes) | **GET** /rest/api/3/screenscheme | Get screen schemes
[**Update-ScreenScheme**](ScreenSchemesApi.md#Update-ScreenScheme) | **PUT** /rest/api/3/screenscheme/{screenSchemeId} | Update screen scheme


<a id="New-ScreenScheme"></a>
# **New-ScreenScheme**
> ScreenSchemeId New-ScreenScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenSchemeDetails] <PSCustomObject><br>

Create screen scheme

Creates a screen scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ScreenTypes = Initialize-ScreenTypes -Create 0 -Default 0 -Edit 0 -View 0
$ScreenSchemeDetails = Initialize-ScreenSchemeDetails -Description "MyDescription" -Name "MyName" -Screens $ScreenTypes # ScreenSchemeDetails | 

# Create screen scheme
try {
    $Result = New-ScreenScheme -ScreenSchemeDetails $ScreenSchemeDetails
} catch {
    Write-Host ("Exception occurred when calling New-ScreenScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenSchemeDetails** | [**ScreenSchemeDetails**](ScreenSchemeDetails.md)|  | 

### Return type

[**ScreenSchemeId**](ScreenSchemeId.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteScreenScheme"></a>
# **Invoke-DeleteScreenScheme**
> void Invoke-DeleteScreenScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenSchemeId] <String><br>

Delete screen scheme

Deletes a screen scheme. A screen scheme cannot be deleted if it is used in an issue type screen scheme.  Only screens schemes used in classic projects can be deleted.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ScreenSchemeId = "MyScreenSchemeId" # String | The ID of the screen scheme.

# Delete screen scheme
try {
    $Result = Invoke-DeleteScreenScheme -ScreenSchemeId $ScreenSchemeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteScreenScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenSchemeId** | **String**| The ID of the screen scheme. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ScreenSchemes"></a>
# **Get-ScreenSchemes**
> PageBeanScreenScheme Get-ScreenSchemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryString] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>

Get screen schemes

Returns a [paginated](#pagination) list of screen schemes.  Only screen schemes used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 25)
$Id = 0 # Int64[] | The list of screen scheme IDs. To include multiple IDs, provide an ampersand-separated list. For example, `id=10000&id=10001`. (optional)
$Expand = "MyExpand" # String | Use [expand](#expansion) include additional information in the response. This parameter accepts `issueTypeScreenSchemes` that, for each screen schemes, returns information about the issue type screen scheme the screen scheme is assigned to. (optional) (default to "")
$QueryString = "MyQueryString" # String | String used to perform a case-insensitive partial match with screen scheme name. (optional) (default to "")
$OrderBy = "name" # String | [Order](#ordering) the results by a field:   *  `id` Sorts by screen scheme ID.  *  `name` Sorts by screen scheme name. (optional)

# Get screen schemes
try {
    $Result = Get-ScreenSchemes -StartAt $StartAt -MaxResults $MaxResults -Id $Id -Expand $Expand -QueryString $QueryString -OrderBy $OrderBy
} catch {
    Write-Host ("Exception occurred when calling Get-ScreenSchemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 25]
 **Id** | [**Int64[]**](Int64.md)| The list of screen scheme IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] 
 **Expand** | **String**| Use [expand](#expansion) include additional information in the response. This parameter accepts &#x60;issueTypeScreenSchemes&#x60; that, for each screen schemes, returns information about the issue type screen scheme the screen scheme is assigned to. | [optional] [default to &quot;&quot;]
 **QueryString** | **String**| String used to perform a case-insensitive partial match with screen scheme name. | [optional] [default to &quot;&quot;]
 **OrderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;id&#x60; Sorts by screen scheme ID.  *  &#x60;name&#x60; Sorts by screen scheme name. | [optional] 

### Return type

[**PageBeanScreenScheme**](PageBeanScreenScheme.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ScreenScheme"></a>
# **Update-ScreenScheme**
> AnyType Update-ScreenScheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenSchemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateScreenSchemeDetails] <PSCustomObject><br>

Update screen scheme

Updates a screen scheme. Only screen schemes used in classic projects can be updated.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ScreenSchemeId = "MyScreenSchemeId" # String | The ID of the screen scheme.
$UpdateScreenTypes = Initialize-UpdateScreenTypes -Create "MyCreate" -Default "MyDefault" -Edit "MyEdit" -View "MyView"
$UpdateScreenSchemeDetails = Initialize-UpdateScreenSchemeDetails -Description "MyDescription" -Name "MyName" -Screens $UpdateScreenTypes # UpdateScreenSchemeDetails | The screen scheme update details.

# Update screen scheme
try {
    $Result = Update-ScreenScheme -ScreenSchemeId $ScreenSchemeId -UpdateScreenSchemeDetails $UpdateScreenSchemeDetails
} catch {
    Write-Host ("Exception occurred when calling Update-ScreenScheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenSchemeId** | **String**| The ID of the screen scheme. | 
 **UpdateScreenSchemeDetails** | [**UpdateScreenSchemeDetails**](UpdateScreenSchemeDetails.md)| The screen scheme update details. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

