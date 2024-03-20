# WorkflowTransitionRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configuration** | [**AnyType**](.md) | EXPERIMENTAL. The configuration of the transition rule. | [optional] 
**Type** | **String** | The type of the transition rule. | 

## Examples

- Prepare the resource
```powershell
$WorkflowTransitionRule = Initialize-PSJiraWorkflowTransitionRule  -Configuration null `
 -Type null
```

- Convert the resource to JSON
```powershell
$WorkflowTransitionRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

