# CustomFieldContextDefaultValueTextArea
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **String** | The default text. The maximum length is 32767 characters. | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueTextArea = Initialize-PSJiraCustomFieldContextDefaultValueTextArea  -Text null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueTextArea | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

