# WorkflowCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configuration** | [**SystemCollectionsHashtable**](.md) | EXPERIMENTAL. The configuration of the transition rule. | [optional] 
**NodeType** | **String** |  | 
**Type** | **String** | The type of the transition rule. | 
**Conditions** | [**WorkflowCondition[]**](WorkflowCondition.md) | The list of workflow conditions. | 
**Operator** | **String** | The compound condition operator. | 

## Examples

- Prepare the resource
```powershell
$WorkflowCondition = Initialize-PSJiraWorkflowCondition  -Configuration null `
 -NodeType null `
 -Type null `
 -Conditions null `
 -Operator null
```

- Convert the resource to JSON
```powershell
$WorkflowCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

