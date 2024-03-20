# CustomFieldContextDefaultValueForgeGroupField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**GroupId** | **String** | The ID of the the default group. | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueForgeGroupField = Initialize-PSJiraCustomFieldContextDefaultValueForgeGroupField  -ContextId null `
 -GroupId null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueForgeGroupField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

