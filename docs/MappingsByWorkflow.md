# MappingsByWorkflow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewWorkflowId** | **String** | The ID of the new workflow. | 
**OldWorkflowId** | **String** | The ID of the old workflow. | 
**StatusMappings** | [**WorkflowAssociationStatusMapping[]**](WorkflowAssociationStatusMapping.md) | The list of status mappings. | 

## Examples

- Prepare the resource
```powershell
$MappingsByWorkflow = Initialize-PSJiraMappingsByWorkflow  -NewWorkflowId null `
 -OldWorkflowId null `
 -StatusMappings null
```

- Convert the resource to JSON
```powershell
$MappingsByWorkflow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

