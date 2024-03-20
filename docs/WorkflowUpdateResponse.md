# WorkflowUpdateResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Statuses** | [**JiraWorkflowStatus[]**](JiraWorkflowStatus.md) | List of updated statuses. | [optional] 
**TaskId** | **String** | If there is a [asynchronous task](#async-operations) operation, as a result of this update. | [optional] 
**Workflows** | [**JiraWorkflow[]**](JiraWorkflow.md) | List of updated workflows. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowUpdateResponse = Initialize-PSJiraWorkflowUpdateResponse  -Statuses null `
 -TaskId null `
 -Workflows null
```

- Convert the resource to JSON
```powershell
$WorkflowUpdateResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

