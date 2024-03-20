# ParsedJqlQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Errors** | **String[]** | The list of syntax or validation errors. | [optional] 
**Query** | **String** | The JQL query that was parsed and validated. | 
**Structure** | [**JqlQuery**](JqlQuery.md) | The syntax tree of the query. Empty if the query was invalid. | [optional] 

## Examples

- Prepare the resource
```powershell
$ParsedJqlQuery = Initialize-PSJiraParsedJqlQuery  -Errors null `
 -Query null `
 -Structure null
```

- Convert the resource to JSON
```powershell
$ParsedJqlQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

