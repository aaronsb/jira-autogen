# PSJira.PSJira\Api.ClassificationLevelsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AllUserDataClassificationLevels**](ClassificationLevelsApi.md#Get-AllUserDataClassificationLevels) | **GET** /rest/api/3/classification-levels | Get all classification levels


<a id="Get-AllUserDataClassificationLevels"></a>
# **Get-AllUserDataClassificationLevels**
> DataClassificationLevelsBean Get-AllUserDataClassificationLevels<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>

Get all classification levels

Returns all classification levels.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Status = "PUBLISHED" # String[] | Optional set of statuses to filter by. (optional)
$OrderBy = "rank" # String | Ordering of the results by a given field. If not provided, values will not be sorted. (optional)

# Get all classification levels
try {
    $Result = Get-AllUserDataClassificationLevels -Status $Status -OrderBy $OrderBy
} catch {
    Write-Host ("Exception occurred when calling Get-AllUserDataClassificationLevels: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Status** | [**String[]**](String.md)| Optional set of statuses to filter by. | [optional] 
 **OrderBy** | **String**| Ordering of the results by a given field. If not provided, values will not be sorted. | [optional] 

### Return type

[**DataClassificationLevelsBean**](DataClassificationLevelsBean.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

