# BulkProjectPermissionGrants
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issues** | **Int64[]** | IDs of the issues the user has the permission for. | 
**Permission** | **String** | A project permission, | 
**Projects** | **Int64[]** | IDs of the projects the user has the permission for. | 

## Examples

- Prepare the resource
```powershell
$BulkProjectPermissionGrants = Initialize-PSJiraBulkProjectPermissionGrants  -Issues null `
 -Permission null `
 -Projects null
```

- Convert the resource to JSON
```powershell
$BulkProjectPermissionGrants | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

