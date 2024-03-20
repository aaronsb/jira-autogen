# WorkflowsWithTransitionRulesDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Workflows** | [**WorkflowTransitionRulesDetails[]**](WorkflowTransitionRulesDetails.md) | The list of workflows with transition rules to delete. | 

## Examples

- Prepare the resource
```powershell
$WorkflowsWithTransitionRulesDetails = Initialize-PSJiraWorkflowsWithTransitionRulesDetails  -Workflows null
```

- Convert the resource to JSON
```powershell
$WorkflowsWithTransitionRulesDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

