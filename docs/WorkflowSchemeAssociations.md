# WorkflowSchemeAssociations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectIds** | **String[]** | The list of projects that use the workflow scheme. | 
**WorkflowScheme** | [**WorkflowScheme**](WorkflowScheme.md) | The workflow scheme. | 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeAssociations = Initialize-PSJiraWorkflowSchemeAssociations  -ProjectIds null `
 -WorkflowScheme null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeAssociations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

