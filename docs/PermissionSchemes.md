# PermissionSchemes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PermissionSchemes** | [**PermissionScheme[]**](PermissionScheme.md) | Permission schemes list. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PermissionSchemes = Initialize-PSJiraPermissionSchemes  -PermissionSchemes null
```

- Convert the resource to JSON
```powershell
$PermissionSchemes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

