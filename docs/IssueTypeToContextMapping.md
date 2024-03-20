# IssueTypeToContextMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**IsAnyIssueType** | **Boolean** | Whether the context is mapped to any issue type. | [optional] 
**IssueTypeId** | **String** | The ID of the issue type. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeToContextMapping = Initialize-PSJiraIssueTypeToContextMapping  -ContextId null `
 -IsAnyIssueType null `
 -IssueTypeId null
```

- Convert the resource to JSON
```powershell
$IssueTypeToContextMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

