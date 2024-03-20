# ChangeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Field** | **String** | The name of the field changed. | [optional] [readonly] 
**FieldId** | **String** | The ID of the field changed. | [optional] [readonly] 
**Fieldtype** | **String** | The type of the field changed. | [optional] [readonly] 
**VarFrom** | **String** | The details of the original value. | [optional] [readonly] 
**FromString** | **String** | The details of the original value as a string. | [optional] [readonly] 
**To** | **String** | The details of the new value. | [optional] [readonly] 
**ToString** | **String** | The details of the new value as a string. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ChangeDetails = Initialize-PSJiraChangeDetails  -Field null `
 -FieldId null `
 -Fieldtype null `
 -VarFrom null `
 -FromString null `
 -To null `
 -ToString null
```

- Convert the resource to JSON
```powershell
$ChangeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

