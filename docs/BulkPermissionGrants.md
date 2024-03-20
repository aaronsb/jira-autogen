# BulkPermissionGrants
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GlobalPermissions** | **String[]** | List of permissions granted to the user. | 
**ProjectPermissions** | [**BulkProjectPermissionGrants[]**](BulkProjectPermissionGrants.md) | List of project permissions and the projects and issues those permissions provide access to. | 

## Examples

- Prepare the resource
```powershell
$BulkPermissionGrants = Initialize-PSJiraBulkPermissionGrants  -GlobalPermissions null `
 -ProjectPermissions null
```

- Convert the resource to JSON
```powershell
$BulkPermissionGrants | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

