# BulkEditShareableEntityRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **String** | Allowed action for bulk edit shareable entity | 
**ChangeOwnerDetails** | [**BulkChangeOwnerDetails**](BulkChangeOwnerDetails.md) | The details of change owner action. | [optional] 
**EntityIds** | **Int64[]** | The id list of shareable entities to be changed. | 
**ExtendAdminPermissions** | **Boolean** | Whether the actions are executed by users with Administer Jira global permission. | [optional] 
**PermissionDetails** | [**PermissionDetails**](PermissionDetails.md) | The permission details to be changed. | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkEditShareableEntityRequest = Initialize-PSJiraBulkEditShareableEntityRequest  -Action null `
 -ChangeOwnerDetails null `
 -EntityIds null `
 -ExtendAdminPermissions null `
 -PermissionDetails null
```

- Convert the resource to JSON
```powershell
$BulkEditShareableEntityRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

