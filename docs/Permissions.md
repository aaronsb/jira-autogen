# Permissions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Permissions** | [**System.Collections.Hashtable**](UserPermission.md) | List of permissions. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Permissions = Initialize-PSJiraPermissions  -Permissions null
```

- Convert the resource to JSON
```powershell
$Permissions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

