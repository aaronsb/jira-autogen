# WorkflowTransition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** | The transition ID. | 
**Name** | **String** | The transition name. | 

## Examples

- Prepare the resource
```powershell
$WorkflowTransition = Initialize-PSJiraWorkflowTransition  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$WorkflowTransition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

