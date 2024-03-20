# WorkflowRuleConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the rule. | [optional] 
**Parameters** | **System.Collections.Hashtable** | The parameters related to the rule. | [optional] 
**RuleKey** | **String** | The rule key of the rule. | 

## Examples

- Prepare the resource
```powershell
$WorkflowRuleConfiguration = Initialize-PSJiraWorkflowRuleConfiguration  -Id null `
 -Parameters null `
 -RuleKey null
```

- Convert the resource to JSON
```powershell
$WorkflowRuleConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

