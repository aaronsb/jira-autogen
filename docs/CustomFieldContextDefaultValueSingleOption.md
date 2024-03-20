# CustomFieldContextDefaultValueSingleOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**OptionId** | **String** | The ID of the default option. | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueSingleOption = Initialize-PSJiraCustomFieldContextDefaultValueSingleOption  -ContextId null `
 -OptionId null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueSingleOption | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

