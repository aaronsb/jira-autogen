# PSJira.PSJira\Api.ServiceRegistryApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ServiceRegistryResourceServicesGet**](ServiceRegistryApi.md#Invoke-ServiceRegistryResourceServicesGet) | **GET** /rest/atlassian-connect/1/service-registry | Retrieve the attributes of service registries


<a id="Invoke-ServiceRegistryResourceServicesGet"></a>
# **Invoke-ServiceRegistryResourceServicesGet**
> ServiceRegistry[] Invoke-ServiceRegistryResourceServicesGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServiceIds] <String[]><br>

Retrieve the attributes of service registries

Retrieve the attributes of given service registries.  **[Permissions](#permissions) required:** Only Connect apps can make this request and the servicesIds belong to the tenant you are requesting

### Example
```powershell
$ServiceIds = "MyServiceIds" # String[] | The ID of the services (the strings starting with ""b:"" need to be decoded in Base64).

# Retrieve the attributes of service registries
try {
    $Result = Invoke-ServiceRegistryResourceServicesGet -ServiceIds $ServiceIds
} catch {
    Write-Host ("Exception occurred when calling Invoke-ServiceRegistryResourceServicesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ServiceIds** | [**String[]**](String.md)| The ID of the services (the strings starting with &quot;&quot;b:&quot;&quot; need to be decoded in Base64). | 

### Return type

[**ServiceRegistry[]**](ServiceRegistry.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

