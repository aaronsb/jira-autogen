# FieldConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the field configuration. | 
**Id** | **Int64** | The ID of the field configuration. | 
**IsDefault** | **Boolean** | Whether the field configuration is the default. | [optional] 
**Name** | **String** | The name of the field configuration. | 

## Examples

- Prepare the resource
```powershell
$FieldConfiguration = Initialize-PSJiraFieldConfiguration  -Description null `
 -Id null `
 -IsDefault null `
 -Name null
```

- Convert the resource to JSON
```powershell
$FieldConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

