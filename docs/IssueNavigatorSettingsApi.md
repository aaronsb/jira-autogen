# PSJira.PSJira\Api.IssueNavigatorSettingsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-IssueNavigatorDefaultColumns**](IssueNavigatorSettingsApi.md#Get-IssueNavigatorDefaultColumns) | **GET** /rest/api/3/settings/columns | Get issue navigator default columns
[**Set-IssueNavigatorDefaultColumns**](IssueNavigatorSettingsApi.md#Set-IssueNavigatorDefaultColumns) | **PUT** /rest/api/3/settings/columns | Set issue navigator default columns


<a id="Get-IssueNavigatorDefaultColumns"></a>
# **Get-IssueNavigatorDefaultColumns**
> ColumnItem[] Get-IssueNavigatorDefaultColumns<br>

Get issue navigator default columns

Returns the default issue navigator columns.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get issue navigator default columns
try {
    $Result = Get-IssueNavigatorDefaultColumns
} catch {
    Write-Host ("Exception occurred when calling Get-IssueNavigatorDefaultColumns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ColumnItem[]**](ColumnItem.md) (PSCustomObject)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-IssueNavigatorDefaultColumns"></a>
# **Set-IssueNavigatorDefaultColumns**
> void Set-IssueNavigatorDefaultColumns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ColumnRequestBody] <PSCustomObject><br>

Set issue navigator default columns

Sets the default issue navigator columns.  The `columns` parameter accepts a navigable field value and is expressed as HTML form data. To specify multiple columns, pass multiple `columns` parameters. For example, in curl:  `curl -X PUT -d columns=summary -d columns=description https://your-domain.atlassian.net/rest/api/3/settings/columns`  If no column details are sent, then all default columns are removed.  A navigable field is one that can be used as a column on the issue navigator. Find details of navigable issue columns using [Get fields](#api-rest-api-3-field-get).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ColumnRequestBody = Initialize-ColumnRequestBody -Columns "MyColumns" # ColumnRequestBody | A navigable field value.

# Set issue navigator default columns
try {
    $Result = Set-IssueNavigatorDefaultColumns -ColumnRequestBody $ColumnRequestBody
} catch {
    Write-Host ("Exception occurred when calling Set-IssueNavigatorDefaultColumns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ColumnRequestBody** | [**ColumnRequestBody**](ColumnRequestBody.md)| A navigable field value. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

