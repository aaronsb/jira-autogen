# Transition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the transition. | 
**VarFrom** | **String[]** | The statuses the transition can start from. | 
**Id** | **String** | The ID of the transition. | 
**Name** | **String** | The name of the transition. | 
**Properties** | [**System.Collections.Hashtable**](AnyType.md) | The properties of the transition. | [optional] 
**Rules** | [**WorkflowRules**](WorkflowRules.md) |  | [optional] 
**Screen** | [**TransitionScreenDetails**](TransitionScreenDetails.md) |  | [optional] 
**To** | **String** | The status the transition goes to. | 
**Type** | **String** | The type of the transition. | 

## Examples

- Prepare the resource
```powershell
$Transition = Initialize-PSJiraTransition  -Description null `
 -VarFrom null `
 -Id null `
 -Name null `
 -Properties null `
 -Rules null `
 -Screen null `
 -To null `
 -Type null
```

- Convert the resource to JSON
```powershell
$Transition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

