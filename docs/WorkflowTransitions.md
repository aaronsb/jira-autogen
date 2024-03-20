# WorkflowTransitions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actions** | [**WorkflowRuleConfiguration[]**](WorkflowRuleConfiguration.md) | The post-functions of the transition. | [optional] 
**Conditions** | [**ConditionGroupConfiguration**](ConditionGroupConfiguration.md) |  | [optional] 
**CustomIssueEventId** | **String** | The custom event ID of the transition. | [optional] 
**Description** | **String** | The description of the transition. | [optional] 
**VarFrom** | [**WorkflowStatusAndPort[]**](WorkflowStatusAndPort.md) | The statuses the transition can start from. | [optional] 
**Id** | **String** | The ID of the transition. | [optional] 
**Name** | **String** | The name of the transition. | [optional] 
**Properties** | **System.Collections.Hashtable** | The properties of the transition. | [optional] 
**To** | [**WorkflowStatusAndPort**](WorkflowStatusAndPort.md) |  | [optional] 
**TransitionScreen** | [**WorkflowRuleConfiguration**](WorkflowRuleConfiguration.md) |  | [optional] 
**Triggers** | [**WorkflowTrigger[]**](WorkflowTrigger.md) | The triggers of the transition. | [optional] 
**Type** | **String** | The transition type. | [optional] 
**Validators** | [**WorkflowRuleConfiguration[]**](WorkflowRuleConfiguration.md) | The validators of the transition. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowTransitions = Initialize-PSJiraWorkflowTransitions  -Actions null `
 -Conditions null `
 -CustomIssueEventId null `
 -Description null `
 -VarFrom null `
 -Id null `
 -Name null `
 -Properties null `
 -To null `
 -TransitionScreen null `
 -Triggers null `
 -Type null `
 -Validators null
```

- Convert the resource to JSON
```powershell
$WorkflowTransitions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

