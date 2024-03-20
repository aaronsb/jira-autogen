# WorkflowOperations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CanDelete** | **Boolean** | Whether the workflow can be deleted. | 
**CanEdit** | **Boolean** | Whether the workflow can be updated. | 

## Examples

- Prepare the resource
```powershell
$WorkflowOperations = Initialize-PSJiraWorkflowOperations  -CanDelete null `
 -CanEdit null
```

- Convert the resource to JSON
```powershell
$WorkflowOperations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

