# ProjectPermissions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CanEdit** | **Boolean** | Whether the logged user can edit the project. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectPermissions = Initialize-PSJiraProjectPermissions  -CanEdit null
```

- Convert the resource to JSON
```powershell
$ProjectPermissions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

