# FieldConfigurationSchemeProjects
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldConfigurationScheme** | [**FieldConfigurationScheme**](FieldConfigurationScheme.md) |  | [optional] 
**ProjectIds** | **String[]** | The IDs of projects using the field configuration scheme. | 

## Examples

- Prepare the resource
```powershell
$FieldConfigurationSchemeProjects = Initialize-PSJiraFieldConfigurationSchemeProjects  -FieldConfigurationScheme null `
 -ProjectIds null
```

- Convert the resource to JSON
```powershell
$FieldConfigurationSchemeProjects | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

