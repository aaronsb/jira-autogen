# PSJira.PSJira\Api.ProjectFeaturesApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-FeaturesForProject**](ProjectFeaturesApi.md#Get-FeaturesForProject) | **GET** /rest/api/3/project/{projectIdOrKey}/features | Get project features
[**Invoke-ToggleFeatureForProject**](ProjectFeaturesApi.md#Invoke-ToggleFeatureForProject) | **PUT** /rest/api/3/project/{projectIdOrKey}/features/{featureKey} | Set project feature state


<a id="Get-FeaturesForProject"></a>
# **Get-FeaturesForProject**
> ContainerForProjectFeatures Get-FeaturesForProject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectIdOrKey] <String><br>

Get project features

Returns the list of features for a project.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectIdOrKey = "MyProjectIdOrKey" # String | The ID or (case-sensitive) key of the project.

# Get project features
try {
    $Result = Get-FeaturesForProject -ProjectIdOrKey $ProjectIdOrKey
} catch {
    Write-Host ("Exception occurred when calling Get-FeaturesForProject: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectIdOrKey** | **String**| The ID or (case-sensitive) key of the project. | 

### Return type

[**ContainerForProjectFeatures**](ContainerForProjectFeatures.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ToggleFeatureForProject"></a>
# **Invoke-ToggleFeatureForProject**
> ContainerForProjectFeatures Invoke-ToggleFeatureForProject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FeatureKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectFeatureState] <PSCustomObject><br>

Set project feature state

Sets the state of a project feature.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectIdOrKey = "MyProjectIdOrKey" # String | The ID or (case-sensitive) key of the project.
$FeatureKey = "MyFeatureKey" # String | The key of the feature.
$ProjectFeatureState = Initialize-ProjectFeatureState -State "ENABLED" # ProjectFeatureState | Details of the feature state change.

# Set project feature state
try {
    $Result = Invoke-ToggleFeatureForProject -ProjectIdOrKey $ProjectIdOrKey -FeatureKey $FeatureKey -ProjectFeatureState $ProjectFeatureState
} catch {
    Write-Host ("Exception occurred when calling Invoke-ToggleFeatureForProject: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectIdOrKey** | **String**| The ID or (case-sensitive) key of the project. | 
 **FeatureKey** | **String**| The key of the feature. | 
 **ProjectFeatureState** | [**ProjectFeatureState**](ProjectFeatureState.md)| Details of the feature state change. | 

### Return type

[**ContainerForProjectFeatures**](ContainerForProjectFeatures.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

