# FieldConfigurationItemsDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldConfigurationItems** | [**FieldConfigurationItem[]**](FieldConfigurationItem.md) | Details of fields in a field configuration. | 

## Examples

- Prepare the resource
```powershell
$FieldConfigurationItemsDetails = Initialize-PSJiraFieldConfigurationItemsDetails  -FieldConfigurationItems null
```

- Convert the resource to JSON
```powershell
$FieldConfigurationItemsDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

