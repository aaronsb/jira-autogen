# FieldConfigurationSchemeProjectAssociation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldConfigurationSchemeId** | **String** | The ID of the field configuration scheme. If the field configuration scheme ID is &#x60;null&#x60;, the operation assigns the default field configuration scheme. | [optional] 
**ProjectId** | **String** | The ID of the project. | 

## Examples

- Prepare the resource
```powershell
$FieldConfigurationSchemeProjectAssociation = Initialize-PSJiraFieldConfigurationSchemeProjectAssociation  -FieldConfigurationSchemeId null `
 -ProjectId null
```

- Convert the resource to JSON
```powershell
$FieldConfigurationSchemeProjectAssociation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

