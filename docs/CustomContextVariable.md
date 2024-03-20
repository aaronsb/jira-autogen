# CustomContextVariable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of custom context variable. | 
**AccountId** | **String** | The account ID of the user. | 
**Id** | **Int64** | The issue ID. | [optional] 
**Key** | **String** | The issue key. | [optional] 
**Value** | [**SystemCollectionsHashtable**](.md) | A JSON object containing custom content. | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomContextVariable = Initialize-PSJiraCustomContextVariable  -Type null `
 -AccountId null `
 -Id null `
 -Key null `
 -Value null
```

- Convert the resource to JSON
```powershell
$CustomContextVariable | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

