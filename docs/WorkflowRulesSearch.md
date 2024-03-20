# WorkflowRulesSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expand** | **String** | Use expand to include additional information in the response. This parameter accepts &#x60;transition&#x60; which, for each rule, returns information about the transition the rule is assigned to. | [optional] 
**RuleIds** | **String[]** | The list of workflow rule IDs. | 
**WorkflowEntityId** | **String** | The workflow ID. | 

## Examples

- Prepare the resource
```powershell
$WorkflowRulesSearch = Initialize-PSJiraWorkflowRulesSearch  -Expand transition `
 -RuleIds null `
 -WorkflowEntityId a498d711-685d-428d-8c3e-bc03bb450ea7
```

- Convert the resource to JSON
```powershell
$WorkflowRulesSearch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

