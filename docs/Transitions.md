# Transitions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expand** | **String** | Expand options that include additional transitions details in the response. | [optional] [readonly] 
**Transitions** | [**IssueTransition[]**](IssueTransition.md) | List of issue transitions. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Transitions = Initialize-PSJiraTransitions  -Expand null `
 -Transitions null
```

- Convert the resource to JSON
```powershell
$Transitions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

