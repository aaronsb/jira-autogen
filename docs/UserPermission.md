# UserPermission
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeprecatedKey** | **Boolean** | Indicate whether the permission key is deprecated. Note that deprecated keys cannot be used in the &#x60;permissions parameter of Get my permissions. Deprecated keys are not returned by Get all permissions.&#x60; | [optional] 
**Description** | **String** | The description of the permission. | [optional] 
**HavePermission** | **Boolean** | Whether the permission is available to the user in the queried context. | [optional] 
**Id** | **String** | The ID of the permission. Either &#x60;id&#x60; or &#x60;key&#x60; must be specified. Use [Get all permissions](#api-rest-api-3-permissions-get) to get the list of permissions. | [optional] 
**Key** | **String** | The key of the permission. Either &#x60;id&#x60; or &#x60;key&#x60; must be specified. Use [Get all permissions](#api-rest-api-3-permissions-get) to get the list of permissions. | [optional] 
**Name** | **String** | The name of the permission. | [optional] 
**Type** | **String** | The type of the permission. | [optional] 

## Examples

- Prepare the resource
```powershell
$UserPermission = Initialize-PSJiraUserPermission  -DeprecatedKey null `
 -Description null `
 -HavePermission null `
 -Id null `
 -Key null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$UserPermission | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

