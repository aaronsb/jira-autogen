# AvailableWorkflowTriggerTypes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the trigger rule. | [optional] 
**Name** | **String** | The name of the trigger rule. | [optional] 
**Type** | **String** | The type identifier of trigger rule. | [optional] 

## Examples

- Prepare the resource
```powershell
$AvailableWorkflowTriggerTypes = Initialize-PSJiraAvailableWorkflowTriggerTypes  -Description null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$AvailableWorkflowTriggerTypes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

