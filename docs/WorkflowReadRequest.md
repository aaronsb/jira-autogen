# WorkflowReadRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectAndIssueTypes** | [**ProjectAndIssueTypePair[]**](ProjectAndIssueTypePair.md) | The list of projects and issue types to query. | [optional] 
**WorkflowIds** | **String[]** | The list of workflow IDs to query. | [optional] 
**WorkflowNames** | **String[]** | The list of workflow names to query. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowReadRequest = Initialize-PSJiraWorkflowReadRequest  -ProjectAndIssueTypes null `
 -WorkflowIds null `
 -WorkflowNames null
```

- Convert the resource to JSON
```powershell
$WorkflowReadRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

