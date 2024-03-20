# AvailableWorkflowConnectRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AddonKey** | **String** | The add-on providing the rule. | [optional] 
**CreateUrl** | **String** | The URL creation path segment defined in the Connect module. | [optional] 
**Description** | **String** | The rule description. | [optional] 
**EditUrl** | **String** | The URL edit path segment defined in the Connect module. | [optional] 
**ModuleKey** | **String** | The module providing the rule. | [optional] 
**Name** | **String** | The rule name. | [optional] 
**RuleKey** | **String** | The rule key. | [optional] 
**RuleType** | **String** | The rule type. | [optional] 
**ViewUrl** | **String** | The URL view path segment defined in the Connect module. | [optional] 

## Examples

- Prepare the resource
```powershell
$AvailableWorkflowConnectRule = Initialize-PSJiraAvailableWorkflowConnectRule  -AddonKey null `
 -CreateUrl null `
 -Description null `
 -EditUrl null `
 -ModuleKey null `
 -Name null `
 -RuleKey null `
 -RuleType null `
 -ViewUrl null
```

- Convert the resource to JSON
```powershell
$AvailableWorkflowConnectRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

