# StatusMappingDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeId** | **String** | The issue type for the status mapping. | 
**ProjectId** | **String** | The project for the status mapping. | 
**StatusMigrations** | [**StatusMigration[]**](StatusMigration.md) | The list of old and new status ID mappings for the specified project and issue type. | 

## Examples

- Prepare the resource
```powershell
$StatusMappingDTO = Initialize-PSJiraStatusMappingDTO  -IssueTypeId null `
 -ProjectId null `
 -StatusMigrations null
```

- Convert the resource to JSON
```powershell
$StatusMappingDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

