# WorkflowUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultStatusMappings** | [**StatusMigration[]**](StatusMigration.md) | The mapping of old to new status ID. | [optional] 
**Description** | **String** | The new description for this workflow. | [optional] 
**Id** | **String** | The ID of this workflow. | 
**StartPointLayout** | [**WorkflowLayout**](WorkflowLayout.md) |  | [optional] 
**StatusMappings** | [**StatusMappingDTO[]**](StatusMappingDTO.md) | The mapping of old to new status ID for a specific project and issue type. | [optional] 
**Statuses** | [**StatusLayoutUpdate[]**](StatusLayoutUpdate.md) | The statuses associated with this workflow. | 
**Transitions** | [**TransitionUpdateDTO[]**](TransitionUpdateDTO.md) | The transitions of this workflow. | 
**Version** | [**DocumentVersion**](DocumentVersion.md) |  | 

## Examples

- Prepare the resource
```powershell
$WorkflowUpdate = Initialize-PSJiraWorkflowUpdate  -DefaultStatusMappings null `
 -Description null `
 -Id null `
 -StartPointLayout null `
 -StatusMappings null `
 -Statuses null `
 -Transitions null `
 -Version null
```

- Convert the resource to JSON
```powershell
$WorkflowUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

