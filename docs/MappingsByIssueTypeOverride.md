# MappingsByIssueTypeOverride
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeId** | **String** | The ID of the issue type for this mapping. | 
**StatusMappings** | [**WorkflowAssociationStatusMapping[]**](WorkflowAssociationStatusMapping.md) | The list of status mappings. | 

## Examples

- Prepare the resource
```powershell
$MappingsByIssueTypeOverride = Initialize-PSJiraMappingsByIssueTypeOverride  -IssueTypeId null `
 -StatusMappings null
```

- Convert the resource to JSON
```powershell
$MappingsByIssueTypeOverride | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

