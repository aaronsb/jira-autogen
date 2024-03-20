# WorkflowTrigger
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the trigger. | [optional] 
**Parameters** | **System.Collections.Hashtable** | The parameters of the trigger. | 
**RuleKey** | **String** | The rule key of the trigger. | 

## Examples

- Prepare the resource
```powershell
$WorkflowTrigger = Initialize-PSJiraWorkflowTrigger  -Id null `
 -Parameters null `
 -RuleKey null
```

- Convert the resource to JSON
```powershell
$WorkflowTrigger | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

