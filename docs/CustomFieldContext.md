# CustomFieldContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the context. | 
**Id** | **String** | The ID of the context. | 
**IsAnyIssueType** | **Boolean** | Whether the context apply to all issue types. | 
**IsGlobalContext** | **Boolean** | Whether the context is global. | 
**Name** | **String** | The name of the context. | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContext = Initialize-PSJiraCustomFieldContext  -Description null `
 -Id null `
 -IsAnyIssueType null `
 -IsGlobalContext null `
 -Name null
```

- Convert the resource to JSON
```powershell
$CustomFieldContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

