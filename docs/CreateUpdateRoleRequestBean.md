# CreateUpdateRoleRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | A description of the project role. Required when fully updating a project role. Optional when creating or partially updating a project role. | [optional] 
**Name** | **String** | The name of the project role. Must be unique. Cannot begin or end with whitespace. The maximum length is 255 characters. Required when creating a project role. Optional when partially updating a project role. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateUpdateRoleRequestBean = Initialize-PSJiraCreateUpdateRoleRequestBean  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$CreateUpdateRoleRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

