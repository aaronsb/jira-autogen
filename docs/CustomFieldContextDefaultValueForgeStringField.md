# CustomFieldContextDefaultValueForgeStringField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**Text** | **String** | The default text. The maximum length is 254 characters. | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueForgeStringField = Initialize-PSJiraCustomFieldContextDefaultValueForgeStringField  -ContextId null `
 -Text null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueForgeStringField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

