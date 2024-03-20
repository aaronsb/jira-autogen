# CustomFieldContextDefaultValueProject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**ProjectId** | **String** | The ID of the default project. | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueProject = Initialize-PSJiraCustomFieldContextDefaultValueProject  -ContextId null `
 -ProjectId null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueProject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

