# PSJira.PSJira\Api.UIModificationsAppsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-UiModification**](UIModificationsAppsApi.md#New-UiModification) | **POST** /rest/api/3/uiModifications | Create UI modification
[**Invoke-DeleteUiModification**](UIModificationsAppsApi.md#Invoke-DeleteUiModification) | **DELETE** /rest/api/3/uiModifications/{uiModificationId} | Delete UI modification
[**Get-UiModifications**](UIModificationsAppsApi.md#Get-UiModifications) | **GET** /rest/api/3/uiModifications | Get UI modifications
[**Update-UiModification**](UIModificationsAppsApi.md#Update-UiModification) | **PUT** /rest/api/3/uiModifications/{uiModificationId} | Update UI modification


<a id="New-UiModification"></a>
# **New-UiModification**
> UiModificationIdentifiers New-UiModification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateUiModificationDetails] <PSCustomObject><br>

Create UI modification

Creates a UI modification. UI modification can only be created by Forge apps.  Each app can define up to 3000 UI modifications. Each UI modification can define up to 1000 contexts. The same context can be assigned to maximum 100 UI modifications.  **[Permissions](#permissions) required:**   *  *None* if the UI modification is created without contexts.  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for one or more projects, if the UI modification is created with contexts.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$UiModificationContextDetails = Initialize-UiModificationContextDetails -Id "MyId" -IsAvailable $false -IssueTypeId "MyIssueTypeId" -ProjectId "MyProjectId" -ViewType "GIC"
$CreateUiModificationDetails = Initialize-CreateUiModificationDetails -Contexts $UiModificationContextDetails -VarData "MyVarData" -Description "MyDescription" -Name "MyName" # CreateUiModificationDetails | Details of the UI modification.

# Create UI modification
try {
    $Result = New-UiModification -CreateUiModificationDetails $CreateUiModificationDetails
} catch {
    Write-Host ("Exception occurred when calling New-UiModification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateUiModificationDetails** | [**CreateUiModificationDetails**](CreateUiModificationDetails.md)| Details of the UI modification. | 

### Return type

[**UiModificationIdentifiers**](UiModificationIdentifiers.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteUiModification"></a>
# **Invoke-DeleteUiModification**
> AnyType Invoke-DeleteUiModification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UiModificationId] <String><br>

Delete UI modification

Deletes a UI modification. All the contexts that belong to the UI modification are deleted too. UI modification can only be deleted by Forge apps.  **[Permissions](#permissions) required:** None.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$UiModificationId = "MyUiModificationId" # String | The ID of the UI modification.

# Delete UI modification
try {
    $Result = Invoke-DeleteUiModification -UiModificationId $UiModificationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteUiModification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UiModificationId** | **String**| The ID of the UI modification. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-UiModifications"></a>
# **Get-UiModifications**
> PageBeanUiModificationDetails Get-UiModifications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Get UI modifications

Gets UI modifications. UI modifications can only be retrieved by Forge apps.  **[Permissions](#permissions) required:** None.

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
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 50)
$Expand = "MyExpand" # String | Use expand to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  `data` Returns UI modification data.  *  `contexts` Returns UI modification contexts. (optional)

# Get UI modifications
try {
    $Result = Get-UiModifications -StartAt $StartAt -MaxResults $MaxResults -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-UiModifications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **Expand** | **String**| Use expand to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;data&#x60; Returns UI modification data.  *  &#x60;contexts&#x60; Returns UI modification contexts. | [optional] 

### Return type

[**PageBeanUiModificationDetails**](PageBeanUiModificationDetails.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-UiModification"></a>
# **Update-UiModification**
> AnyType Update-UiModification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UiModificationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateUiModificationDetails] <PSCustomObject><br>

Update UI modification

Updates a UI modification. UI modification can only be updated by Forge apps.  Each UI modification can define up to 1000 contexts. The same context can be assigned to maximum 100 UI modifications.  **[Permissions](#permissions) required:**   *  *None* if the UI modification is created without contexts.  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for one or more projects, if the UI modification is created with contexts.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$UiModificationId = "MyUiModificationId" # String | The ID of the UI modification.
$UiModificationContextDetails = Initialize-UiModificationContextDetails -Id "MyId" -IsAvailable $false -IssueTypeId "MyIssueTypeId" -ProjectId "MyProjectId" -ViewType "GIC"
$UpdateUiModificationDetails = Initialize-UpdateUiModificationDetails -Contexts $UiModificationContextDetails -VarData "MyVarData" -Description "MyDescription" -Name "MyName" # UpdateUiModificationDetails | Details of the UI modification.

# Update UI modification
try {
    $Result = Update-UiModification -UiModificationId $UiModificationId -UpdateUiModificationDetails $UpdateUiModificationDetails
} catch {
    Write-Host ("Exception occurred when calling Update-UiModification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UiModificationId** | **String**| The ID of the UI modification. | 
 **UpdateUiModificationDetails** | [**UpdateUiModificationDetails**](UpdateUiModificationDetails.md)| Details of the UI modification. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

