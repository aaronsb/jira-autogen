# JqlQueriesToSanitize
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Queries** | [**JqlQueryToSanitize[]**](JqlQueryToSanitize.md) | The list of JQL queries to sanitize. Must contain unique values. Maximum of 20 queries. | 

## Examples

- Prepare the resource
```powershell
$JqlQueriesToSanitize = Initialize-PSJiraJqlQueriesToSanitize  -Queries null
```

- Convert the resource to JSON
```powershell
$JqlQueriesToSanitize | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

