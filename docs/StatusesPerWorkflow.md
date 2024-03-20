# StatusesPerWorkflow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InitialStatusId** | **String** | The ID of the initial status for the workflow. | [optional] 
**Statuses** | **String[]** | The status IDs associated with the workflow. | [optional] 
**WorkflowId** | **String** | The ID of the workflow. | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusesPerWorkflow = Initialize-PSJiraStatusesPerWorkflow  -InitialStatusId null `
 -Statuses null `
 -WorkflowId null
```

- Convert the resource to JSON
```powershell
$StatusesPerWorkflow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

