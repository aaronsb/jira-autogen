# AvailableWorkflowForgeRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The rule description. | [optional] 
**Id** | **String** | The unique ARI of the forge rule type. | [optional] 
**Name** | **String** | The rule name. | [optional] 
**RuleKey** | **String** | The rule key. | [optional] 
**RuleType** | **String** | The rule type. | [optional] 

## Examples

- Prepare the resource
```powershell
$AvailableWorkflowForgeRule = Initialize-PSJiraAvailableWorkflowForgeRule  -Description null `
 -Id null `
 -Name null `
 -RuleKey null `
 -RuleType null
```

- Convert the resource to JSON
```powershell
$AvailableWorkflowForgeRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

