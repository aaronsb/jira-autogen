# PermissionsKeysBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Permissions** | **String[]** | A list of permission keys. | 

## Examples

- Prepare the resource
```powershell
$PermissionsKeysBean = Initialize-PSJiraPermissionsKeysBean  -Permissions null
```

- Convert the resource to JSON
```powershell
$PermissionsKeysBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

