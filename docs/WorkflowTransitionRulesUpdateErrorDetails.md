# WorkflowTransitionRulesUpdateErrorDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RuleUpdateErrors** | [**System.Collections.Hashtable**](Set.md) | A list of transition rule update errors, indexed by the transition rule ID. Any transition rule that appears here wasn&#39;t updated. | 
**UpdateErrors** | **String[]** | The list of errors that specify why the workflow update failed. The workflow was not updated if the list contains any entries. | 
**WorkflowId** | [**WorkflowId**](WorkflowId.md) |  | 

## Examples

- Prepare the resource
```powershell
$WorkflowTransitionRulesUpdateErrorDetails = Initialize-PSJiraWorkflowTransitionRulesUpdateErrorDetails  -RuleUpdateErrors null `
 -UpdateErrors null `
 -WorkflowId null
```

- Convert the resource to JSON
```powershell
$WorkflowTransitionRulesUpdateErrorDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

