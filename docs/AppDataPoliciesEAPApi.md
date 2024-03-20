# PSJira.PSJira\Api.AppDataPoliciesEAPApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-Policies**](AppDataPoliciesEAPApi.md#Get-Policies) | **GET** /rest/api/3/data-policy/project | Get data policy for projects (EAP)
[**Get-Policy**](AppDataPoliciesEAPApi.md#Get-Policy) | **GET** /rest/api/3/data-policy | Get data policy for the workspace (EAP)


<a id="Get-Policies"></a>
# **Get-Policies**
> ProjectDataPolicies Get-Policies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ids] <String><br>

Get data policy for projects (EAP)

Returns data policies for the projects specified in the request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Ids = "MyIds" # String | A list of project identifiers. This parameter accepts a comma-separated list. (optional)

# Get data policy for projects (EAP)
try {
    $Result = Get-Policies -Ids $Ids
} catch {
    Write-Host ("Exception occurred when calling Get-Policies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Ids** | **String**| A list of project identifiers. This parameter accepts a comma-separated list. | [optional] 

### Return type

[**ProjectDataPolicies**](ProjectDataPolicies.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Policy"></a>
# **Get-Policy**
> WorkspaceDataPolicy Get-Policy<br>

Get data policy for the workspace (EAP)

Returns data policy for the workspace.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get data policy for the workspace (EAP)
try {
    $Result = Get-Policy
} catch {
    Write-Host ("Exception occurred when calling Get-Policy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WorkspaceDataPolicy**](WorkspaceDataPolicy.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

