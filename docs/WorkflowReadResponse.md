# WorkflowReadResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Statuses** | [**JiraWorkflowStatus[]**](JiraWorkflowStatus.md) | List of statuses. | [optional] 
**Workflows** | [**JiraWorkflow[]**](JiraWorkflow.md) | List of workflows. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowReadResponse = Initialize-PSJiraWorkflowReadResponse  -Statuses null `
 -Workflows null
```

- Convert the resource to JSON
```powershell
$WorkflowReadResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

