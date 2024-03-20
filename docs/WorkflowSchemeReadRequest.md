# WorkflowSchemeReadRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectIds** | **String[]** | The list of project IDs to query. | [optional] 
**WorkflowSchemeIds** | **String[]** | The list of workflow scheme IDs to query. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeReadRequest = Initialize-PSJiraWorkflowSchemeReadRequest  -ProjectIds null `
 -WorkflowSchemeIds null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeReadRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

