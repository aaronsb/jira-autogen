# CustomFieldContextDefaultValueMultipleOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**OptionIds** | **String[]** | The list of IDs of the default options. | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueMultipleOption = Initialize-PSJiraCustomFieldContextDefaultValueMultipleOption  -ContextId null `
 -OptionIds null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueMultipleOption | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

