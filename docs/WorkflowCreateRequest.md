# WorkflowCreateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scope** | [**WorkflowScope**](WorkflowScope.md) |  | 
**Statuses** | [**WorkflowStatusUpdate[]**](WorkflowStatusUpdate.md) | The statuses to associate with the workflows. | 
**Workflows** | [**WorkflowCreate[]**](WorkflowCreate.md) | The details of the workflows to create. | 

## Examples

- Prepare the resource
```powershell
$WorkflowCreateRequest = Initialize-PSJiraWorkflowCreateRequest  -Scope null `
 -Statuses null `
 -Workflows null
```

- Convert the resource to JSON
```powershell
$WorkflowCreateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

