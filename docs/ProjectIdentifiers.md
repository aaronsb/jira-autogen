# ProjectIdentifiers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the created project. | [readonly] 
**Key** | **String** | The key of the created project. | [readonly] 
**Self** | **String** | The URL of the created project. | [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectIdentifiers = Initialize-PSJiraProjectIdentifiers  -Id null `
 -Key null `
 -Self null
```

- Convert the resource to JSON
```powershell
$ProjectIdentifiers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

