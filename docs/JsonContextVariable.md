# JsonContextVariable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of custom context variable. | 
**Value** | [**SystemCollectionsHashtable**](.md) | A JSON object containing custom content. | [optional] 

## Examples

- Prepare the resource
```powershell
$JsonContextVariable = Initialize-PSJiraJsonContextVariable  -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$JsonContextVariable | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

