# CustomFieldContextDefaultValueForgeMultiGroupField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**GroupIds** | **String[]** | The IDs of the default groups. | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueForgeMultiGroupField = Initialize-PSJiraCustomFieldContextDefaultValueForgeMultiGroupField  -ContextId null `
 -GroupIds null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueForgeMultiGroupField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

