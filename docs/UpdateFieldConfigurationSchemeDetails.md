# UpdateFieldConfigurationSchemeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the field configuration scheme. | [optional] 
**Name** | **String** | The name of the field configuration scheme. The name must be unique. | 

## Examples

- Prepare the resource
```powershell
$UpdateFieldConfigurationSchemeDetails = Initialize-PSJiraUpdateFieldConfigurationSchemeDetails  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$UpdateFieldConfigurationSchemeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

