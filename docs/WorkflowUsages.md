# WorkflowUsages
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | Workflow ID. | [optional] 
**WorkflowName** | **String** | Workflow name. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowUsages = Initialize-PSJiraWorkflowUsages  -WorkflowId null `
 -WorkflowName null
```

- Convert the resource to JSON
```powershell
$WorkflowUsages | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

