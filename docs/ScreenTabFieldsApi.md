# PSJira.PSJira\Api.ScreenTabFieldsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-ScreenTabField**](ScreenTabFieldsApi.md#Add-ScreenTabField) | **POST** /rest/api/3/screens/{screenId}/tabs/{tabId}/fields | Add screen tab field
[**Get-AllScreenTabFields**](ScreenTabFieldsApi.md#Get-AllScreenTabFields) | **GET** /rest/api/3/screens/{screenId}/tabs/{tabId}/fields | Get all screen tab fields
[**Move-ScreenTabField**](ScreenTabFieldsApi.md#Move-ScreenTabField) | **POST** /rest/api/3/screens/{screenId}/tabs/{tabId}/fields/{id}/move | Move screen tab field
[**Remove-ScreenTabField**](ScreenTabFieldsApi.md#Remove-ScreenTabField) | **DELETE** /rest/api/3/screens/{screenId}/tabs/{tabId}/fields/{id} | Remove screen tab field


<a id="Add-ScreenTabField"></a>
# **Add-ScreenTabField**
> ScreenableField Add-ScreenTabField<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TabId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AddFieldBean] <PSCustomObject><br>

Add screen tab field

Adds a field to a screen tab.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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
$TabId = 789 # Int64 | The ID of the screen tab.
$AddFieldBean = Initialize-AddFieldBean -FieldId "MyFieldId" # AddFieldBean | 

# Add screen tab field
try {
    $Result = Add-ScreenTabField -ScreenId $ScreenId -TabId $TabId -AddFieldBean $AddFieldBean
} catch {
    Write-Host ("Exception occurred when calling Add-ScreenTabField: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenId** | **Int64**| The ID of the screen. | 
 **TabId** | **Int64**| The ID of the screen tab. | 
 **AddFieldBean** | [**AddFieldBean**](AddFieldBean.md)|  | 

### Return type

[**ScreenableField**](ScreenableField.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllScreenTabFields"></a>
# **Get-AllScreenTabFields**
> ScreenableField[] Get-AllScreenTabFields<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TabId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectKey] <String><br>

Get all screen tab fields

Returns all fields for a screen tab.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *  *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) when the project key is specified, providing that the screen is associated with the project through a Screen Scheme and Issue Type Screen Scheme.

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
$TabId = 789 # Int64 | The ID of the screen tab.
$ProjectKey = "MyProjectKey" # String | The key of the project. (optional)

# Get all screen tab fields
try {
    $Result = Get-AllScreenTabFields -ScreenId $ScreenId -TabId $TabId -ProjectKey $ProjectKey
} catch {
    Write-Host ("Exception occurred when calling Get-AllScreenTabFields: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenId** | **Int64**| The ID of the screen. | 
 **TabId** | **Int64**| The ID of the screen tab. | 
 **ProjectKey** | **String**| The key of the project. | [optional] 

### Return type

[**ScreenableField[]**](ScreenableField.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Move-ScreenTabField"></a>
# **Move-ScreenTabField**
> AnyType Move-ScreenTabField<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TabId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MoveFieldBean] <PSCustomObject><br>

Move screen tab field

Moves a screen tab field.  If `after` and `position` are provided in the request, `position` is ignored.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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
$TabId = 789 # Int64 | The ID of the screen tab.
$Id = "MyId" # String | The ID of the field.
$MoveFieldBean = Initialize-MoveFieldBean -After "MyAfter" -Position "Earlier" # MoveFieldBean | 

# Move screen tab field
try {
    $Result = Move-ScreenTabField -ScreenId $ScreenId -TabId $TabId -Id $Id -MoveFieldBean $MoveFieldBean
} catch {
    Write-Host ("Exception occurred when calling Move-ScreenTabField: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenId** | **Int64**| The ID of the screen. | 
 **TabId** | **Int64**| The ID of the screen tab. | 
 **Id** | **String**| The ID of the field. | 
 **MoveFieldBean** | [**MoveFieldBean**](MoveFieldBean.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-ScreenTabField"></a>
# **Remove-ScreenTabField**
> void Remove-ScreenTabField<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TabId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Remove screen tab field

Removes a field from a screen tab.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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
$TabId = 789 # Int64 | The ID of the screen tab.
$Id = "MyId" # String | The ID of the field.

# Remove screen tab field
try {
    $Result = Remove-ScreenTabField -ScreenId $ScreenId -TabId $TabId -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-ScreenTabField: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScreenId** | **Int64**| The ID of the screen. | 
 **TabId** | **Int64**| The ID of the screen tab. | 
 **Id** | **String**| The ID of the field. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

