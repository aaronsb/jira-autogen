# CustomFieldContextDefaultValueDateTime
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DateTime** | **String** | The default date-time in ISO format. Ignored if &#x60;useCurrent&#x60; is true. | [optional] 
**Type** | **String** |  | 
**UseCurrent** | **Boolean** | Whether to use the current date. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueDateTime = Initialize-PSJiraCustomFieldContextDefaultValueDateTime  -DateTime null `
 -Type null `
 -UseCurrent null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueDateTime | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

