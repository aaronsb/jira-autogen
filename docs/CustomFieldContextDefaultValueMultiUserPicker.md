# CustomFieldContextDefaultValueMultiUserPicker
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountIds** | **String[]** | The IDs of the default users. | 
**ContextId** | **String** | The ID of the context. | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueMultiUserPicker = Initialize-PSJiraCustomFieldContextDefaultValueMultiUserPicker  -AccountIds null `
 -ContextId null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueMultiUserPicker | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

