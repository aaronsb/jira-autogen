# SanitizedJqlQueries
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Queries** | [**SanitizedJqlQuery[]**](SanitizedJqlQuery.md) | The list of sanitized JQL queries. | [optional] 

## Examples

- Prepare the resource
```powershell
$SanitizedJqlQueries = Initialize-PSJiraSanitizedJqlQueries  -Queries null
```

- Convert the resource to JSON
```powershell
$SanitizedJqlQueries | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

