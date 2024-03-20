# CustomFieldContextSingleUserPickerDefaults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The ID of the default user. | 
**ContextId** | **String** | The ID of the context. | 
**Type** | **String** |  | 
**UserFilter** | [**UserFilter**](UserFilter.md) |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextSingleUserPickerDefaults = Initialize-PSJiraCustomFieldContextSingleUserPickerDefaults  -AccountId null `
 -ContextId null `
 -Type null `
 -UserFilter null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextSingleUserPickerDefaults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

