# WorkflowCompoundCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conditions** | [**WorkflowCondition[]**](WorkflowCondition.md) | The list of workflow conditions. | 
**NodeType** | **String** |  | 
**Operator** | **String** | The compound condition operator. | 

## Examples

- Prepare the resource
```powershell
$WorkflowCompoundCondition = Initialize-PSJiraWorkflowCompoundCondition  -Conditions null `
 -NodeType null `
 -Operator null
```

- Convert the resource to JSON
```powershell
$WorkflowCompoundCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

