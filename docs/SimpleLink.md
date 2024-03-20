# SimpleLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Href** | **String** |  | [optional] 
**IconClass** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Label** | **String** |  | [optional] 
**StyleClass** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 
**Weight** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SimpleLink = Initialize-PSJiraSimpleLink  -Href null `
 -IconClass null `
 -Id null `
 -Label null `
 -StyleClass null `
 -Title null `
 -Weight null
```

- Convert the resource to JSON
```powershell
$SimpleLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

