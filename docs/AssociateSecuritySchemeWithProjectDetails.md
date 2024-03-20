# AssociateSecuritySchemeWithProjectDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OldToNewSecurityLevelMappings** | [**OldToNewSecurityLevelMappingsBean[]**](OldToNewSecurityLevelMappingsBean.md) | The list of scheme levels which should be remapped to new levels of the issue security scheme. | [optional] 
**ProjectId** | **String** | The ID of the project. | 
**SchemeId** | **String** | The ID of the issue security scheme. Providing null will clear the association with the issue security scheme. | 

## Examples

- Prepare the resource
```powershell
$AssociateSecuritySchemeWithProjectDetails = Initialize-PSJiraAssociateSecuritySchemeWithProjectDetails  -OldToNewSecurityLevelMappings null `
 -ProjectId null `
 -SchemeId null
```

- Convert the resource to JSON
```powershell
$AssociateSecuritySchemeWithProjectDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

