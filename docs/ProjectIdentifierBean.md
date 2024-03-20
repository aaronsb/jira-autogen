# ProjectIdentifierBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the project. | [optional] [readonly] 
**Key** | **String** | The key of the project. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectIdentifierBean = Initialize-PSJiraProjectIdentifierBean  -Id null `
 -Key null
```

- Convert the resource to JSON
```powershell
$ProjectIdentifierBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

