# ConnectWorkflowTransitionRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configuration** | [**RuleConfiguration**](RuleConfiguration.md) |  | 
**Id** | **String** | The ID of the transition rule. | 
**Key** | **String** | The key of the rule, as defined in the Connect app descriptor. | 
**Transition** | [**WorkflowTransition**](WorkflowTransition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectWorkflowTransitionRule = Initialize-PSJiraConnectWorkflowTransitionRule  -Configuration null `
 -Id 123 `
 -Key WorkflowKey `
 -Transition null
```

- Convert the resource to JSON
```powershell
$ConnectWorkflowTransitionRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

