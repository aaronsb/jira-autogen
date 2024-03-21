# PSJira.PSJira\Api.DynamicModulesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-DynamicModulesResourceModules**](DynamicModulesApi.md#Get-DynamicModulesResourceModules) | **GET** /rest/atlassian-connect/1/app/module/dynamic | Get modules
[**Post-DynamicModulesResourceRegisterModules**](DynamicModulesApi.md#Post-DynamicModulesResourceRegisterModules) | **POST** /rest/atlassian-connect/1/app/module/dynamic | Register modules
[**Invoke-DynamicModulesResourceRemoveModulesDelete**](DynamicModulesApi.md#Invoke-DynamicModulesResourceRemoveModulesDelete) | **DELETE** /rest/atlassian-connect/1/app/module/dynamic | Remove modules


<a id="Get-DynamicModulesResourceModules"></a>
# **Get-DynamicModulesResourceModules**
> ConnectModules Get-DynamicModulesResourceModules<br>

Get modules

Returns all modules registered dynamically by the calling app.  **[Permissions](#permissions) required:** Only Connect apps can make this request.

### Example
```powershell

# Get modules
try {
    $Result = Get-DynamicModulesResourceModules
} catch {
    Write-Host ("Exception occurred when calling Get-DynamicModulesResourceModules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConnectModules**](ConnectModules.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Post-DynamicModulesResourceRegisterModules"></a>
# **Post-DynamicModulesResourceRegisterModules**
> void Post-DynamicModulesResourceRegisterModules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectModules] <PSCustomObject><br>

Register modules

Registers a list of modules.  **[Permissions](#permissions) required:** Only Connect apps can make this request.

### Example
```powershell
$ConnectModules = Initialize-ConnectModules -Modules # ConnectModules | 

# Register modules
try {
    $Result = Post-DynamicModulesResourceRegisterModules -ConnectModules $ConnectModules
} catch {
    Write-Host ("Exception occurred when calling Post-DynamicModulesResourceRegisterModules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectModules** | [**ConnectModules**](ConnectModules.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DynamicModulesResourceRemoveModulesDelete"></a>
# **Invoke-DynamicModulesResourceRemoveModulesDelete**
> void Invoke-DynamicModulesResourceRemoveModulesDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ModuleKey] <String[]><br>

Remove modules

Remove all or a list of modules registered by the calling app.  **[Permissions](#permissions) required:** Only Connect apps can make this request.

### Example
```powershell
$ModuleKey = "MyModuleKey" # String[] | The key of the module to remove. To include multiple module keys, provide multiple copies of this parameter. For example, `moduleKey=dynamic-attachment-entity-property&moduleKey=dynamic-select-field`. Nonexistent keys are ignored. (optional)

# Remove modules
try {
    $Result = Invoke-DynamicModulesResourceRemoveModulesDelete -ModuleKey $ModuleKey
} catch {
    Write-Host ("Exception occurred when calling Invoke-DynamicModulesResourceRemoveModulesDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ModuleKey** | [**String[]**](String.md)| The key of the module to remove. To include multiple module keys, provide multiple copies of this parameter. For example, &#x60;moduleKey&#x3D;dynamic-attachment-entity-property&amp;moduleKey&#x3D;dynamic-select-field&#x60;. Nonexistent keys are ignored. | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

