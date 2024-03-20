# Context
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the context. | [optional] [readonly] 
**Name** | **String** | The name of the context. | [optional] [readonly] 
**Scope** | [**Scope**](Scope.md) | The scope of the context. | [optional] 

## Examples

- Prepare the resource
```powershell
$Context = Initialize-PSJiraContext  -Id null `
 -Name null `
 -Scope null
```

- Convert the resource to JSON
```powershell
$Context | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

