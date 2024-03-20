# RestrictedPermission
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the permission. Either &#x60;id&#x60; or &#x60;key&#x60; must be specified. Use [Get all permissions](#api-rest-api-3-permissions-get) to get the list of permissions. | [optional] 
**Key** | **String** | The key of the permission. Either &#x60;id&#x60; or &#x60;key&#x60; must be specified. Use [Get all permissions](#api-rest-api-3-permissions-get) to get the list of permissions. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestrictedPermission = Initialize-PSJiraRestrictedPermission  -Id null `
 -Key null
```

- Convert the resource to JSON
```powershell
$RestrictedPermission | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

