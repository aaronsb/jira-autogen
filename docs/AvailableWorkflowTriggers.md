# AvailableWorkflowTriggers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailableTypes** | [**AvailableWorkflowTriggerTypes[]**](AvailableWorkflowTriggerTypes.md) | The list of available trigger types. | 
**RuleKey** | **String** | The rule key of the rule. | 

## Examples

- Prepare the resource
```powershell
$AvailableWorkflowTriggers = Initialize-PSJiraAvailableWorkflowTriggers  -AvailableTypes null `
 -RuleKey null
```

- Convert the resource to JSON
```powershell
$AvailableWorkflowTriggers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

