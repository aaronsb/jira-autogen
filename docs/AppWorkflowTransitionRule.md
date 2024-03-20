# AppWorkflowTransitionRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configuration** | [**RuleConfiguration**](RuleConfiguration.md) |  | 
**Id** | **String** | The ID of the transition rule. | 
**Key** | **String** | The key of the rule, as defined in the Connect or the Forge app descriptor. | [readonly] 
**Transition** | [**WorkflowTransition**](WorkflowTransition.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AppWorkflowTransitionRule = Initialize-PSJiraAppWorkflowTransitionRule  -Configuration null `
 -Id null `
 -Key null `
 -Transition null
```

- Convert the resource to JSON
```powershell
$AppWorkflowTransitionRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

