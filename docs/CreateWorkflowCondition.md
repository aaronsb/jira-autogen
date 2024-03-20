# CreateWorkflowCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conditions** | [**CreateWorkflowCondition[]**](CreateWorkflowCondition.md) | The list of workflow conditions. | [optional] 
**Configuration** | [**System.Collections.Hashtable**](AnyType.md) | EXPERIMENTAL. The configuration of the transition rule. | [optional] 
**Operator** | **String** | The compound condition operator. | [optional] 
**Type** | **String** | The type of the transition rule. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateWorkflowCondition = Initialize-PSJiraCreateWorkflowCondition  -Conditions null `
 -Configuration null `
 -Operator null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CreateWorkflowCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

