# WorkflowTransitionRules
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conditions** | [**AppWorkflowTransitionRule[]**](AppWorkflowTransitionRule.md) | The list of conditions within the workflow. | [optional] 
**PostFunctions** | [**AppWorkflowTransitionRule[]**](AppWorkflowTransitionRule.md) | The list of post functions within the workflow. | [optional] 
**Validators** | [**AppWorkflowTransitionRule[]**](AppWorkflowTransitionRule.md) | The list of validators within the workflow. | [optional] 
**WorkflowId** | [**WorkflowId**](WorkflowId.md) |  | 

## Examples

- Prepare the resource
```powershell
$WorkflowTransitionRules = Initialize-PSJiraWorkflowTransitionRules  -Conditions null `
 -PostFunctions null `
 -Validators null `
 -WorkflowId null
```

- Convert the resource to JSON
```powershell
$WorkflowTransitionRules | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

