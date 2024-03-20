# WorkflowCreateResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Statuses** | [**JiraWorkflowStatus[]**](JiraWorkflowStatus.md) | List of created statuses. | [optional] 
**Workflows** | [**JiraWorkflow[]**](JiraWorkflow.md) | List of created workflows. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowCreateResponse = Initialize-PSJiraWorkflowCreateResponse  -Statuses null `
 -Workflows null
```

- Convert the resource to JSON
```powershell
$WorkflowCreateResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

