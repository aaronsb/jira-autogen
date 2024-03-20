# PSJira.PSJira\Api.AppMigrationApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-AppIssueFieldValueUpdateResourceUpdateIssueFieldsPut**](AppMigrationApi.md#Invoke-AppIssueFieldValueUpdateResourceUpdateIssueFieldsPut) | **PUT** /rest/atlassian-connect/1/migration/field | Bulk update custom field value
[**Invoke-MigrationResourceUpdateEntityPropertiesValuePut**](AppMigrationApi.md#Invoke-MigrationResourceUpdateEntityPropertiesValuePut) | **PUT** /rest/atlassian-connect/1/migration/properties/{entityType} | Bulk update entity properties
[**Invoke-MigrationResourceWorkflowRuleSearchPost**](AppMigrationApi.md#Invoke-MigrationResourceWorkflowRuleSearchPost) | **POST** /rest/atlassian-connect/1/migration/workflow/rule/search | Get workflow transition rule configurations


<a id="Invoke-AppIssueFieldValueUpdateResourceUpdateIssueFieldsPut"></a>
# **Invoke-AppIssueFieldValueUpdateResourceUpdateIssueFieldsPut**
> AnyType Invoke-AppIssueFieldValueUpdateResourceUpdateIssueFieldsPut<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtlassianTransferId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectCustomFieldValues] <PSCustomObject><br>

Bulk update custom field value

Updates the value of a custom field added by Connect apps on one or more issues. The values of up to 200 custom fields can be updated.  **[Permissions](#permissions) required:** Only Connect apps can make this request

### Example
```powershell
$AtlassianTransferId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The ID of the transfer.
$ConnectCustomFieldValue = Initialize-ConnectCustomFieldValue -Type "StringIssueField" -FieldID 0 -IssueID 0 -Number 0 -OptionID "MyOptionID" -RichText "MyRichText" -String "MyString" -Text "MyText"
$ConnectCustomFieldValues = Initialize-ConnectCustomFieldValues -UpdateValueList $ConnectCustomFieldValue # ConnectCustomFieldValues | 

# Bulk update custom field value
try {
    $Result = Invoke-AppIssueFieldValueUpdateResourceUpdateIssueFieldsPut -AtlassianTransferId $AtlassianTransferId -ConnectCustomFieldValues $ConnectCustomFieldValues
} catch {
    Write-Host ("Exception occurred when calling Invoke-AppIssueFieldValueUpdateResourceUpdateIssueFieldsPut: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AtlassianTransferId** | **String**| The ID of the transfer. | 
 **ConnectCustomFieldValues** | [**ConnectCustomFieldValues**](ConnectCustomFieldValues.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-MigrationResourceUpdateEntityPropertiesValuePut"></a>
# **Invoke-MigrationResourceUpdateEntityPropertiesValuePut**
> void Invoke-MigrationResourceUpdateEntityPropertiesValuePut<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtlassianTransferId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EntityType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EntityPropertyDetails] <PSCustomObject[]><br>

Bulk update entity properties

Updates the values of multiple entity properties for an object, up to 50 updates per request. This operation is for use by Connect apps during app migration.

### Example
```powershell
$AtlassianTransferId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The app migration transfer ID.
$EntityType = "IssueProperty" # String | The type indicating the object that contains the entity properties.
$EntityPropertyDetails = Initialize-EntityPropertyDetails -EntityId 123 -Key "mykey" -Value "newValue" # EntityPropertyDetails[] | 

# Bulk update entity properties
try {
    $Result = Invoke-MigrationResourceUpdateEntityPropertiesValuePut -AtlassianTransferId $AtlassianTransferId -EntityType $EntityType -EntityPropertyDetails $EntityPropertyDetails
} catch {
    Write-Host ("Exception occurred when calling Invoke-MigrationResourceUpdateEntityPropertiesValuePut: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AtlassianTransferId** | **String**| The app migration transfer ID. | 
 **EntityType** | **String**| The type indicating the object that contains the entity properties. | 
 **EntityPropertyDetails** | [**EntityPropertyDetails[]**](EntityPropertyDetails.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-MigrationResourceWorkflowRuleSearchPost"></a>
# **Invoke-MigrationResourceWorkflowRuleSearchPost**
> WorkflowRulesSearchDetails Invoke-MigrationResourceWorkflowRuleSearchPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtlassianTransferId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowRulesSearch] <PSCustomObject><br>

Get workflow transition rule configurations

Returns configurations for workflow transition rules migrated from server to cloud and owned by the calling Connect app.

### Example
```powershell
$AtlassianTransferId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The app migration transfer ID.
$WorkflowRulesSearch = Initialize-WorkflowRulesSearch -Expand "transition" -RuleIds "55d44f1d-c859-42e5-9c27-2c5ec3f340b1" -WorkflowEntityId "a498d711-685d-428d-8c3e-bc03bb450ea7" # WorkflowRulesSearch | 

# Get workflow transition rule configurations
try {
    $Result = Invoke-MigrationResourceWorkflowRuleSearchPost -AtlassianTransferId $AtlassianTransferId -WorkflowRulesSearch $WorkflowRulesSearch
} catch {
    Write-Host ("Exception occurred when calling Invoke-MigrationResourceWorkflowRuleSearchPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AtlassianTransferId** | **String**| The app migration transfer ID. | 
 **WorkflowRulesSearch** | [**WorkflowRulesSearch**](WorkflowRulesSearch.md)|  | 

### Return type

[**WorkflowRulesSearchDetails**](WorkflowRulesSearchDetails.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

