# PSJira.PSJira\Api.ScreensApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-FieldToDefaultScreen**](ScreensApi.md#Add-FieldToDefaultScreen) | **POST** /rest/api/3/screens/addToDefault/{fieldId} | Add field to default screen
[**New-Screen**](ScreensApi.md#New-Screen) | **POST** /rest/api/3/screens | Create screen
[**Invoke-DeleteScreen**](ScreensApi.md#Invoke-DeleteScreen) | **DELETE** /rest/api/3/screens/{screenId} | Delete screen
[**Get-AvailableScreenFields**](ScreensApi.md#Get-AvailableScreenFields) | **GET** /rest/api/3/screens/{screenId}/availableFields | Get available screen fields
[**Get-Screens**](ScreensApi.md#Get-Screens) | **GET** /rest/api/3/screens | Get screens
[**Get-ScreensForField**](ScreensApi.md#Get-ScreensForField) | **GET** /rest/api/3/field/{fieldId}/screens | Get screens for a field
[**Update-Screen**](ScreensApi.md#Update-Screen) | **PUT** /rest/api/3/screens/{screenId} | Update screen


<a id="Add-FieldToDefaultScreen"></a>
# **Add-FieldToDefaultScreen**
> AnyType Add-FieldToDefaultScreen<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldId] <String><br>

Add field to default screen

Adds a field to the default tab of the default screen.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$FieldId = "MyFieldId" # String | The ID of the field.

# Add field to default screen
try {
    $Result = Add-FieldToDefaultScreen -FieldId $FieldId
} catch {
    Write-Host ("Exception occurred when calling Add-FieldToDefaultScreen: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FieldId** | **String**| The ID of the field. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-Screen"></a>
# **New-Screen**
> Screen New-Screen<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenDetails] <PSCustomObject><br>

Create screen

Creates a screen with a default field tab.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ScreenDetails = Initialize-ScreenDetails -Description "MyDescription" -Name "MyName" # ScreenDetails | 

# Create screen
try {
    $Result = New-Screen -ScreenDetails $ScreenDetails
} catch {
    Write-Host ("Exception occurred when calling New-Screen: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenDetails** | [**ScreenDetails**](ScreenDetails.md)|  | 

### Return type

[**Screen**](Screen.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteScreen"></a>
# **Invoke-DeleteScreen**
> void Invoke-DeleteScreen<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenId] <Int64><br>

Delete screen

Deletes a screen. A screen cannot be deleted if it is used in a screen scheme, workflow, or workflow draft.  Only screens used in classic projects can be deleted.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ScreenId = 789 # Int64 | The ID of the screen.

# Delete screen
try {
    $Result = Invoke-DeleteScreen -ScreenId $ScreenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteScreen: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenId** | **Int64**| The ID of the screen. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AvailableScreenFields"></a>
# **Get-AvailableScreenFields**
> ScreenableField[] Get-AvailableScreenFields<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenId] <Int64><br>

Get available screen fields

Returns the fields that can be added to a tab on a screen.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ScreenId = 789 # Int64 | The ID of the screen.

# Get available screen fields
try {
    $Result = Get-AvailableScreenFields -ScreenId $ScreenId
} catch {
    Write-Host ("Exception occurred when calling Get-AvailableScreenFields: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenId** | **Int64**| The ID of the screen. | 

### Return type

[**ScreenableField[]**](ScreenableField.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Screens"></a>
# **Get-Screens**
> PageBeanScreen Get-Screens<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryString] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Scope] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>

Get screens

Returns a [paginated](#pagination) list of all screens or those specified by one or more screen IDs.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 100)
$Id = 0 # Int64[] | The list of screen IDs. To include multiple IDs, provide an ampersand-separated list. For example, `id=10000&id=10001`. (optional)
$QueryString = "MyQueryString" # String | String used to perform a case-insensitive partial match with screen name. (optional) (default to "")
$Scope = "GLOBAL" # String[] | The scope filter string. To filter by multiple scope, provide an ampersand-separated list. For example, `scope=GLOBAL&scope=PROJECT`. (optional)
$OrderBy = "name" # String | [Order](#ordering) the results by a field:   *  `id` Sorts by screen ID.  *  `name` Sorts by screen name. (optional)

# Get screens
try {
    $Result = Get-Screens -StartAt $StartAt -MaxResults $MaxResults -Id $Id -QueryString $QueryString -Scope $Scope -OrderBy $OrderBy
} catch {
    Write-Host ("Exception occurred when calling Get-Screens: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 100]
 **Id** | [**Int64[]**](Int64.md)| The list of screen IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] 
 **QueryString** | **String**| String used to perform a case-insensitive partial match with screen name. | [optional] [default to &quot;&quot;]
 **Scope** | [**String[]**](String.md)| The scope filter string. To filter by multiple scope, provide an ampersand-separated list. For example, &#x60;scope&#x3D;GLOBAL&amp;scope&#x3D;PROJECT&#x60;. | [optional] 
 **OrderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;id&#x60; Sorts by screen ID.  *  &#x60;name&#x60; Sorts by screen name. | [optional] 

### Return type

[**PageBeanScreen**](PageBeanScreen.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ScreensForField"></a>
# **Get-ScreensForField**
> PageBeanScreenWithTab Get-ScreensForField<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get screens for a field

Returns a [paginated](#pagination) list of the screens a field is used in.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$FieldId = "MyFieldId" # String | The ID of the field to return screens for.
$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 100)
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information about screens in the response. This parameter accepts `tab` which returns details about the screen tabs the field is used in. (optional)

# Get screens for a field
try {
    $Result = Get-ScreensForField -FieldId $FieldId -StartAt $StartAt -MaxResults $MaxResults -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-ScreensForField: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FieldId** | **String**| The ID of the field to return screens for. | 
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 100]
 **Expand** | **String**| Use [expand](#expansion) to include additional information about screens in the response. This parameter accepts &#x60;tab&#x60; which returns details about the screen tabs the field is used in. | [optional] 

### Return type

[**PageBeanScreenWithTab**](PageBeanScreenWithTab.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Screen"></a>
# **Update-Screen**
> Screen Update-Screen<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateScreenDetails] <PSCustomObject><br>

Update screen

Updates a screen. Only screens used in classic projects can be updated.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ScreenId = 789 # Int64 | The ID of the screen.
$UpdateScreenDetails = Initialize-UpdateScreenDetails -Description "MyDescription" -Name "MyName" # UpdateScreenDetails | 

# Update screen
try {
    $Result = Update-Screen -ScreenId $ScreenId -UpdateScreenDetails $UpdateScreenDetails
} catch {
    Write-Host ("Exception occurred when calling Update-Screen: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenId** | **Int64**| The ID of the screen. | 
 **UpdateScreenDetails** | [**UpdateScreenDetails**](UpdateScreenDetails.md)|  | 

### Return type

[**Screen**](Screen.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

