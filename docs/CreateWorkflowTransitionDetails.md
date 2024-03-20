# CreateWorkflowTransitionDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the transition. The maximum length is 1000 characters. | [optional] 
**VarFrom** | **String[]** | The statuses the transition can start from. | [optional] 
**Name** | **String** | The name of the transition. The maximum length is 60 characters. | 
**Properties** | **System.Collections.Hashtable** | The properties of the transition. | [optional] 
**Rules** | [**CreateWorkflowTransitionRulesDetails**](CreateWorkflowTransitionRulesDetails.md) | The rules of the transition. | [optional] 
**Screen** | [**CreateWorkflowTransitionScreenDetails**](CreateWorkflowTransitionScreenDetails.md) | The screen of the transition. | [optional] 
**To** | **String** | The status the transition goes to. | 
**Type** | **String** | The type of the transition. | 

## Examples

- Prepare the resource
```powershell
$CreateWorkflowTransitionDetails = Initialize-PSJiraCreateWorkflowTransitionDetails  -Description null `
 -VarFrom null `
 -Name null `
 -Properties null `
 -Rules null `
 -Screen null `
 -To null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CreateWorkflowTransitionDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

