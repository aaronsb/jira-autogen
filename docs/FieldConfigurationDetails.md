# FieldConfigurationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the field configuration. | [optional] 
**Name** | **String** | The name of the field configuration. Must be unique. | 

## Examples

- Prepare the resource
```powershell
$FieldConfigurationDetails = Initialize-PSJiraFieldConfigurationDetails  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$FieldConfigurationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

