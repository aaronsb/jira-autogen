# IssueTransition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expand** | **String** | Expand options that include additional transition details in the response. | [optional] [readonly] 
**Fields** | [**System.Collections.Hashtable**](FieldMetadata.md) | Details of the fields associated with the issue transition screen. Use this information to populate &#x60;fields&#x60; and &#x60;update&#x60; in a transition request. | [optional] [readonly] 
**HasScreen** | **Boolean** | Whether there is a screen associated with the issue transition. | [optional] [readonly] 
**Id** | **String** | The ID of the issue transition. Required when specifying a transition to undertake. | [optional] 
**IsAvailable** | **Boolean** | Whether the transition is available to be performed. | [optional] [readonly] 
**IsConditional** | **Boolean** | Whether the issue has to meet criteria before the issue transition is applied. | [optional] [readonly] 
**IsGlobal** | **Boolean** | Whether the issue transition is global, that is, the transition is applied to issues regardless of their status. | [optional] [readonly] 
**IsInitial** | **Boolean** | Whether this is the initial issue transition for the workflow. | [optional] [readonly] 
**Looped** | **Boolean** |  | [optional] 
**Name** | **String** | The name of the issue transition. | [optional] [readonly] 
**To** | [**IssueTransitionTo**](IssueTransitionTo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTransition = Initialize-PSJiraIssueTransition  -Expand null `
 -Fields null `
 -HasScreen null `
 -Id null `
 -IsAvailable null `
 -IsConditional null `
 -IsGlobal null `
 -IsInitial null `
 -Looped null `
 -Name null `
 -To null
```

- Convert the resource to JSON
```powershell
$IssueTransition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

