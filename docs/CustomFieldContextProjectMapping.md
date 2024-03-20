# CustomFieldContextProjectMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | [readonly] 
**IsGlobalContext** | **Boolean** | Whether context is global. | [optional] [readonly] 
**ProjectId** | **String** | The ID of the project. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextProjectMapping = Initialize-PSJiraCustomFieldContextProjectMapping  -ContextId null `
 -IsGlobalContext null `
 -ProjectId null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextProjectMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

