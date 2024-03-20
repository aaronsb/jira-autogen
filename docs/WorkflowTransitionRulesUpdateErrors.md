# WorkflowTransitionRulesUpdateErrors
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UpdateResults** | [**WorkflowTransitionRulesUpdateErrorDetails[]**](WorkflowTransitionRulesUpdateErrorDetails.md) | A list of workflows. | 

## Examples

- Prepare the resource
```powershell
$WorkflowTransitionRulesUpdateErrors = Initialize-PSJiraWorkflowTransitionRulesUpdateErrors  -UpdateResults null
```

- Convert the resource to JSON
```powershell
$WorkflowTransitionRulesUpdateErrors | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

