# UserApplicationRoles
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Callback** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Items** | [**ApplicationRole[]**](ApplicationRole.md) |  | [optional] 
**MaxResults** | **Int32** |  | [optional] 
**PagingCallback** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Size** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserApplicationRoles = Initialize-PSJiraUserApplicationRoles  -Callback null `
 -Items null `
 -MaxResults null `
 -PagingCallback null `
 -Size null
```

- Convert the resource to JSON
```powershell
$UserApplicationRoles | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

