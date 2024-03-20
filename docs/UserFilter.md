# UserFilter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Whether the filter is enabled. | 
**Groups** | **String[]** | User groups autocomplete suggestion users must belong to. If not provided, the default values are used. A maximum of 10 groups can be provided. | [optional] 
**RoleIds** | **Int64[]** | Roles that autocomplete suggestion users must belong to. If not provided, the default values are used. A maximum of 10 roles can be provided. | [optional] 

## Examples

- Prepare the resource
```powershell
$UserFilter = Initialize-PSJiraUserFilter  -Enabled null `
 -Groups null `
 -RoleIds null
```

- Convert the resource to JSON
```powershell
$UserFilter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

