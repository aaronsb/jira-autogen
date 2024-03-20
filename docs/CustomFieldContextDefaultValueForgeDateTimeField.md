# CustomFieldContextDefaultValueForgeDateTimeField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**DateTime** | **String** | The default date-time in ISO format. Ignored if &#x60;useCurrent&#x60; is true. | [optional] 
**Type** | **String** |  | 
**UseCurrent** | **Boolean** | Whether to use the current date. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueForgeDateTimeField = Initialize-PSJiraCustomFieldContextDefaultValueForgeDateTimeField  -ContextId null `
 -DateTime null `
 -Type null `
 -UseCurrent null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueForgeDateTimeField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

