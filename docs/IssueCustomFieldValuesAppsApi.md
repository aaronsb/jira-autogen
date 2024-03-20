# PSJira.PSJira\Api.IssueCustomFieldValuesAppsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Update-CustomFieldValue**](IssueCustomFieldValuesAppsApi.md#Update-CustomFieldValue) | **PUT** /rest/api/3/app/field/{fieldIdOrKey}/value | Update custom field value
[**Update-MultipleCustomFieldValues**](IssueCustomFieldValuesAppsApi.md#Update-MultipleCustomFieldValues) | **POST** /rest/api/3/app/field/value | Update custom fields


<a id="Update-CustomFieldValue"></a>
# **Update-CustomFieldValue**
> AnyType Update-CustomFieldValue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FieldIdOrKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomFieldValueUpdateDetails] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateChangelog] <System.Nullable[Boolean]><br>

Update custom field value

Updates the value of a custom field on one or more issues.  Apps can only perform this operation on [custom fields](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field/) and [custom field types](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field-type/) declared in their own manifests.  **[Permissions](#permissions) required:** Only the app that owns the custom field or custom field type can update its values with this operation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$FieldIdOrKey = "MyFieldIdOrKey" # String | The ID or key of the custom field. For example, `customfield_10010`.
$CustomFieldValueUpdate = Initialize-CustomFieldValueUpdate -IssueIds 0 -Value 
$CustomFieldValueUpdateDetails = Initialize-CustomFieldValueUpdateDetails -Updates $CustomFieldValueUpdate # CustomFieldValueUpdateDetails | 
$GenerateChangelog = $true # Boolean | Whether to generate a changelog for this update. (optional) (default to $true)

# Update custom field value
try {
    $Result = Update-CustomFieldValue -FieldIdOrKey $FieldIdOrKey -CustomFieldValueUpdateDetails $CustomFieldValueUpdateDetails -GenerateChangelog $GenerateChangelog
} catch {
    Write-Host ("Exception occurred when calling Update-CustomFieldValue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FieldIdOrKey** | **String**| The ID or key of the custom field. For example, &#x60;customfield_10010&#x60;. | 
 **CustomFieldValueUpdateDetails** | [**CustomFieldValueUpdateDetails**](CustomFieldValueUpdateDetails.md)|  | 
 **GenerateChangelog** | **Boolean**| Whether to generate a changelog for this update. | [optional] [default to $true]

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-MultipleCustomFieldValues"></a>
# **Update-MultipleCustomFieldValues**
> AnyType Update-MultipleCustomFieldValues<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MultipleCustomFieldValuesUpdateDetails] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateChangelog] <System.Nullable[Boolean]><br>

Update custom fields

Updates the value of one or more custom fields on one or more issues. Combinations of custom field and issue should be unique within the request.  Apps can only perform this operation on [custom fields](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field/) and [custom field types](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field-type/) declared in their own manifests.  **[Permissions](#permissions) required:** Only the app that owns the custom field or custom field type can update its values with this operation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$MultipleCustomFieldValuesUpdate = Initialize-MultipleCustomFieldValuesUpdate -CustomField "MyCustomField" -IssueIds 0 -Value 
$MultipleCustomFieldValuesUpdateDetails = Initialize-MultipleCustomFieldValuesUpdateDetails -Updates $MultipleCustomFieldValuesUpdate # MultipleCustomFieldValuesUpdateDetails | 
$GenerateChangelog = $true # Boolean | Whether to generate a changelog for this update. (optional) (default to $true)

# Update custom fields
try {
    $Result = Update-MultipleCustomFieldValues -MultipleCustomFieldValuesUpdateDetails $MultipleCustomFieldValuesUpdateDetails -GenerateChangelog $GenerateChangelog
} catch {
    Write-Host ("Exception occurred when calling Update-MultipleCustomFieldValues: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MultipleCustomFieldValuesUpdateDetails** | [**MultipleCustomFieldValuesUpdateDetails**](MultipleCustomFieldValuesUpdateDetails.md)|  | 
 **GenerateChangelog** | **Boolean**| Whether to generate a changelog for this update. | [optional] [default to $true]

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

