# WorkflowRulesSearchDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InvalidRules** | **String[]** | List of workflow rule IDs that do not belong to the workflow or can not be found. | [optional] 
**ValidRules** | [**WorkflowTransitionRules[]**](WorkflowTransitionRules.md) | List of valid workflow transition rules. | [optional] 
**WorkflowEntityId** | **String** | The workflow ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowRulesSearchDetails = Initialize-PSJiraWorkflowRulesSearchDetails  -InvalidRules null `
 -ValidRules null `
 -WorkflowEntityId a498d711-685d-428d-8c3e-bc03bb450ea7
```

- Convert the resource to JSON
```powershell
$WorkflowRulesSearchDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

