# VersionUsageInCustomField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomFieldId** | **Int64** | The ID of the custom field. | [optional] [readonly] 
**FieldName** | **String** | The name of the custom field. | [optional] [readonly] 
**IssueCountWithVersionInCustomField** | **Int64** | Count of the issues where the custom field contains the version. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$VersionUsageInCustomField = Initialize-PSJiraVersionUsageInCustomField  -CustomFieldId null `
 -FieldName null `
 -IssueCountWithVersionInCustomField null
```

- Convert the resource to JSON
```powershell
$VersionUsageInCustomField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

