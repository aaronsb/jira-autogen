# WorkflowTransitionRulesUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Workflows** | [**WorkflowTransitionRules[]**](WorkflowTransitionRules.md) | The list of workflows with transition rules to update. | 

## Examples

- Prepare the resource
```powershell
$WorkflowTransitionRulesUpdate = Initialize-PSJiraWorkflowTransitionRulesUpdate  -Workflows null
```

- Convert the resource to JSON
```powershell
$WorkflowTransitionRulesUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

