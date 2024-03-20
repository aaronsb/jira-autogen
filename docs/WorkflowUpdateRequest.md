# WorkflowUpdateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Statuses** | [**WorkflowStatusUpdate[]**](WorkflowStatusUpdate.md) | The statuses to associate with the workflows. | 
**Workflows** | [**WorkflowUpdate[]**](WorkflowUpdate.md) | The details of the workflows to update. | 

## Examples

- Prepare the resource
```powershell
$WorkflowUpdateRequest = Initialize-PSJiraWorkflowUpdateRequest  -Statuses null `
 -Workflows null
```

- Convert the resource to JSON
```powershell
$WorkflowUpdateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

