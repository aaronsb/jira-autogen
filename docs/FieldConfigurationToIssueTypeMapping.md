# FieldConfigurationToIssueTypeMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldConfigurationId** | **String** | The ID of the field configuration. | 
**IssueTypeId** | **String** | The ID of the issue type or *default*. When set to *default* this field configuration issue type item applies to all issue types without a field configuration. An issue type can be included only once in a request. | 

## Examples

- Prepare the resource
```powershell
$FieldConfigurationToIssueTypeMapping = Initialize-PSJiraFieldConfigurationToIssueTypeMapping  -FieldConfigurationId null `
 -IssueTypeId null
```

- Convert the resource to JSON
```powershell
$FieldConfigurationToIssueTypeMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

