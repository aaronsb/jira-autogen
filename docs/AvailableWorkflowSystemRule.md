# AvailableWorkflowSystemRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The rule description. | 
**IncompatibleRuleKeys** | **String[]** | List of rules that conflict with this one. | 
**IsAvailableForInitialTransition** | **Boolean** | Whether the rule can be added added to an initial transition. | 
**IsVisible** | **Boolean** | Whether the rule is visible. | 
**Name** | **String** | The rule name. | 
**RuleKey** | **String** | The rule key. | 
**RuleType** | **String** | The rule type. | 

## Examples

- Prepare the resource
```powershell
$AvailableWorkflowSystemRule = Initialize-PSJiraAvailableWorkflowSystemRule  -Description null `
 -IncompatibleRuleKeys null `
 -IsAvailableForInitialTransition null `
 -IsVisible null `
 -Name null `
 -RuleKey null `
 -RuleType null
```

- Convert the resource to JSON
```powershell
$AvailableWorkflowSystemRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

