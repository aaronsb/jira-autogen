# CreateWorkflowTransitionRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configuration** | [**System.Collections.Hashtable**](AnyType.md) | EXPERIMENTAL. The configuration of the transition rule. | [optional] 
**Type** | **String** | The type of the transition rule. | 

## Examples

- Prepare the resource
```powershell
$CreateWorkflowTransitionRule = Initialize-PSJiraCreateWorkflowTransitionRule  -Configuration null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CreateWorkflowTransitionRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

