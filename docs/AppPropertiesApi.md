# PSJira.PSJira\Api.AppPropertiesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-onPropertiesResourceDeleteAddonPropertyDelete**](AppPropertiesApi.md#Add-onPropertiesResourceDeleteAddonPropertyDelete) | **DELETE** /rest/atlassian-connect/1/addons/{addonKey}/properties/{propertyKey} | Delete app property
[**Add-onPropertiesResourceGetAddonPropertiesGet**](AppPropertiesApi.md#Add-onPropertiesResourceGetAddonPropertiesGet) | **GET** /rest/atlassian-connect/1/addons/{addonKey}/properties | Get app properties
[**Add-onPropertiesResourceGetAddonPropertyGet**](AppPropertiesApi.md#Add-onPropertiesResourceGetAddonPropertyGet) | **GET** /rest/atlassian-connect/1/addons/{addonKey}/properties/{propertyKey} | Get app property
[**Add-onPropertiesResourcePutAddonPropertyPut**](AppPropertiesApi.md#Add-onPropertiesResourcePutAddonPropertyPut) | **PUT** /rest/atlassian-connect/1/addons/{addonKey}/properties/{propertyKey} | Set app property
[**Invoke-DeleteForgeAppProperty**](AppPropertiesApi.md#Invoke-DeleteForgeAppProperty) | **DELETE** /rest/forge/1/app/properties/{propertyKey} | Delete app property (Forge)
[**Send-ForgeAppProperty**](AppPropertiesApi.md#Send-ForgeAppProperty) | **PUT** /rest/forge/1/app/properties/{propertyKey} | Set app property (Forge)


<a id="Add-onPropertiesResourceDeleteAddonPropertyDelete"></a>
# **Add-onPropertiesResourceDeleteAddonPropertyDelete**
> void Add-onPropertiesResourceDeleteAddonPropertyDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AddonKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>

Delete app property

Deletes an app's property.  **[Permissions](#permissions) required:** Only a Connect app whose key matches `addonKey` can make this request. Additionally, Forge apps can access Connect app properties (stored against the same `app.connect.key`).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$AddonKey = "MyAddonKey" # String | The key of the app, as defined in its descriptor.
$PropertyKey = "MyPropertyKey" # String | The key of the property.

# Delete app property
try {
    $Result = Add-onPropertiesResourceDeleteAddonPropertyDelete -AddonKey $AddonKey -PropertyKey $PropertyKey
} catch {
    Write-Host ("Exception occurred when calling Add-onPropertiesResourceDeleteAddonPropertyDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AddonKey** | **String**| The key of the app, as defined in its descriptor. | 
 **PropertyKey** | **String**| The key of the property. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Add-onPropertiesResourceGetAddonPropertiesGet"></a>
# **Add-onPropertiesResourceGetAddonPropertiesGet**
> PropertyKeys Add-onPropertiesResourceGetAddonPropertiesGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AddonKey] <String><br>

Get app properties

Gets all the properties of an app.  **[Permissions](#permissions) required:** Only a Connect app whose key matches `addonKey` can make this request. Additionally, Forge apps can access Connect app properties (stored against the same `app.connect.key`).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$AddonKey = "MyAddonKey" # String | The key of the app, as defined in its descriptor.

# Get app properties
try {
    $Result = Add-onPropertiesResourceGetAddonPropertiesGet -AddonKey $AddonKey
} catch {
    Write-Host ("Exception occurred when calling Add-onPropertiesResourceGetAddonPropertiesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AddonKey** | **String**| The key of the app, as defined in its descriptor. | 

### Return type

[**PropertyKeys**](PropertyKeys.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Add-onPropertiesResourceGetAddonPropertyGet"></a>
# **Add-onPropertiesResourceGetAddonPropertyGet**
> EntityProperty Add-onPropertiesResourceGetAddonPropertyGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AddonKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>

Get app property

Returns the key and value of an app's property.  **[Permissions](#permissions) required:** Only a Connect app whose key matches `addonKey` can make this request. Additionally, Forge apps can access Connect app properties (stored against the same `app.connect.key`).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$AddonKey = "MyAddonKey" # String | The key of the app, as defined in its descriptor.
$PropertyKey = "MyPropertyKey" # String | The key of the property.

# Get app property
try {
    $Result = Add-onPropertiesResourceGetAddonPropertyGet -AddonKey $AddonKey -PropertyKey $PropertyKey
} catch {
    Write-Host ("Exception occurred when calling Add-onPropertiesResourceGetAddonPropertyGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AddonKey** | **String**| The key of the app, as defined in its descriptor. | 
 **PropertyKey** | **String**| The key of the property. | 

### Return type

[**EntityProperty**](EntityProperty.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Add-onPropertiesResourcePutAddonPropertyPut"></a>
# **Add-onPropertiesResourcePutAddonPropertyPut**
> OperationMessage Add-onPropertiesResourcePutAddonPropertyPut<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AddonKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Nullable[AnyType]><br>

Set app property

Sets the value of an app's property. Use this resource to store custom data for your app.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters.  **[Permissions](#permissions) required:** Only a Connect app whose key matches `addonKey` can make this request. Additionally, Forge apps can access Connect app properties (stored against the same `app.connect.key`).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$AddonKey = "MyAddonKey" # String | The key of the app, as defined in its descriptor.
$PropertyKey = "MyPropertyKey" # String | The key of the property.
$Body =  # AnyType | 

# Set app property
try {
    $Result = Add-onPropertiesResourcePutAddonPropertyPut -AddonKey $AddonKey -PropertyKey $PropertyKey -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Add-onPropertiesResourcePutAddonPropertyPut: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AddonKey** | **String**| The key of the app, as defined in its descriptor. | 
 **PropertyKey** | **String**| The key of the property. | 
 **Body** | **AnyType**|  | 

### Return type

[**OperationMessage**](OperationMessage.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteForgeAppProperty"></a>
# **Invoke-DeleteForgeAppProperty**
> void Invoke-DeleteForgeAppProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>

Delete app property (Forge)

Deletes a Forge app's property.  **[Permissions](#permissions) required:** Only Forge apps can make this request.

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

# Delete app property (Forge)
try {
    $Result = Invoke-DeleteForgeAppProperty -PropertyKey $PropertyKey
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteForgeAppProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PropertyKey** | **String**| The key of the property. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-ForgeAppProperty"></a>
# **Send-ForgeAppProperty**
> OperationMessage Send-ForgeAppProperty<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PropertyKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Nullable[AnyType]><br>

Set app property (Forge)

Sets the value of a Forge app's property. These values can be retrieved in [Jira expressions](https://developer.atlassian.com/cloud/jira/platform/jira-expressions/) through the `app` [context variable](https://developer.atlassian.com/cloud/jira/platform/jira-expressions/#context-variables).  For other use cases, use the [Storage API](https://developer.atlassian.com/platform/forge/runtime-reference/storage-api/).  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters.  **[Permissions](#permissions) required:** Only Forge apps can make this request.

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
$Body =  # AnyType | 

# Set app property (Forge)
try {
    $Result = Send-ForgeAppProperty -PropertyKey $PropertyKey -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Send-ForgeAppProperty: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PropertyKey** | **String**| The key of the property. | 
 **Body** | **AnyType**|  | 

### Return type

[**OperationMessage**](OperationMessage.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

