# WorkflowRules
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConditionsTree** | [**WorkflowCondition**](WorkflowCondition.md) |  | [optional] 
**PostFunctions** | [**WorkflowTransitionRule[]**](WorkflowTransitionRule.md) | The workflow post functions. | [optional] 
**Validators** | [**WorkflowTransitionRule[]**](WorkflowTransitionRule.md) | The workflow validators. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowRules = Initialize-PSJiraWorkflowRules  -ConditionsTree null `
 -PostFunctions null `
 -Validators null
```

- Convert the resource to JSON
```powershell
$WorkflowRules | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

