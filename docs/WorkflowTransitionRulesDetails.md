# WorkflowTransitionRulesDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | [**WorkflowId**](WorkflowId.md) |  | 
**WorkflowRuleIds** | **String[]** | The list of connect workflow rule IDs. | 

## Examples

- Prepare the resource
```powershell
$WorkflowTransitionRulesDetails = Initialize-PSJiraWorkflowTransitionRulesDetails  -WorkflowId null `
 -WorkflowRuleIds null
```

- Convert the resource to JSON
```powershell
$WorkflowTransitionRulesDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

