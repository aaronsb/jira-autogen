# RuleConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Disabled** | **Boolean** | Whether the rule is disabled. | [optional] [default to $false]
**Tag** | **String** | A tag used to filter rules in [Get workflow transition rule configurations](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-workflow-transition-rules/#api-rest-api-3-workflow-rule-config-get). | [optional] 
**Value** | **String** | Configuration of the rule, as it is stored by the Connect or the Forge app on the rule configuration page. | 

## Examples

- Prepare the resource
```powershell
$RuleConfiguration = Initialize-PSJiraRuleConfiguration  -Disabled null `
 -Tag null `
 -Value null
```

- Convert the resource to JSON
```powershell
$RuleConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

