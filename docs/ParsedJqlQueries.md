# ParsedJqlQueries
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Queries** | [**ParsedJqlQuery[]**](ParsedJqlQuery.md) | A list of parsed JQL queries. | 

## Examples

- Prepare the resource
```powershell
$ParsedJqlQueries = Initialize-PSJiraParsedJqlQueries  -Queries null
```

- Convert the resource to JSON
```powershell
$ParsedJqlQueries | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

