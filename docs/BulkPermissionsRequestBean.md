# BulkPermissionsRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The account ID of a user. | [optional] 
**GlobalPermissions** | **String[]** | Global permissions to look up. | [optional] 
**ProjectPermissions** | [**BulkProjectPermissions[]**](BulkProjectPermissions.md) | Project permissions with associated projects and issues to look up. | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkPermissionsRequestBean = Initialize-PSJiraBulkPermissionsRequestBean  -AccountId null `
 -GlobalPermissions null `
 -ProjectPermissions null
```

- Convert the resource to JSON
```powershell
$BulkPermissionsRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

