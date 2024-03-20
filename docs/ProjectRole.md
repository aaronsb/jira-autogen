# ProjectRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actors** | [**RoleActor[]**](RoleActor.md) | The list of users who act in this role. | [optional] [readonly] 
**Admin** | **Boolean** | Whether this role is the admin role for the project. | [optional] [readonly] 
**CurrentUserRole** | **Boolean** | Whether the calling user is part of this role. | [optional] 
**Default** | **Boolean** | Whether this role is the default role for the project | [optional] [readonly] 
**Description** | **String** | The description of the project role. | [optional] [readonly] 
**Id** | **Int64** | The ID of the project role. | [optional] [readonly] 
**Name** | **String** | The name of the project role. | [optional] 
**RoleConfigurable** | **Boolean** | Whether the roles are configurable for this project. | [optional] [readonly] 
**Scope** | [**ProjectRoleScope**](ProjectRoleScope.md) |  | [optional] 
**Self** | **String** | The URL the project role details. | [optional] [readonly] 
**TranslatedName** | **String** | The translated name of the project role. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectRole = Initialize-PSJiraProjectRole  -Actors null `
 -Admin null `
 -CurrentUserRole null `
 -Default null `
 -Description null `
 -Id null `
 -Name null `
 -RoleConfigurable null `
 -Scope null `
 -Self null `
 -TranslatedName null
```

- Convert the resource to JSON
```powershell
$ProjectRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

