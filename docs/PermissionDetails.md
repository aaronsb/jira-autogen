# PermissionDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EditPermissions** | [**SharePermission[]**](SharePermission.md) | The edit permissions for the shareable entities. | 
**SharePermissions** | [**SharePermission[]**](SharePermission.md) | The share permissions for the shareable entities. | 

## Examples

- Prepare the resource
```powershell
$PermissionDetails = Initialize-PSJiraPermissionDetails  -EditPermissions null `
 -SharePermissions null
```

- Convert the resource to JSON
```powershell
$PermissionDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

