# WorkflowSchemeIdName
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the workflow scheme. | 
**Name** | **String** | The name of the workflow scheme. | 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeIdName = Initialize-PSJiraWorkflowSchemeIdName  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeIdName | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

