# PermissionScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | A description for the permission scheme. | [optional] 
**Expand** | **String** | The expand options available for the permission scheme. | [optional] [readonly] 
**Id** | **Int64** | The ID of the permission scheme. | [optional] [readonly] 
**Name** | **String** | The name of the permission scheme. Must be unique. | 
**Permissions** | [**PermissionGrant[]**](PermissionGrant.md) | The permission scheme to create or update. See [About permission schemes and grants](../api-group-permission-schemes/#about-permission-schemes-and-grants) for more information. | [optional] 
**Scope** | [**Scope**](Scope.md) | The scope of the permission scheme. | [optional] 
**Self** | **String** | The URL of the permission scheme. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PermissionScheme = Initialize-PSJiraPermissionScheme  -Description null `
 -Expand null `
 -Id null `
 -Name null `
 -Permissions null `
 -Scope null `
 -Self null
```

- Convert the resource to JSON
```powershell
$PermissionScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

