# JqlQueriesToParse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Queries** | **String[]** | A list of queries to parse. | 

## Examples

- Prepare the resource
```powershell
$JqlQueriesToParse = Initialize-PSJiraJqlQueriesToParse  -Queries null
```

- Convert the resource to JSON
```powershell
$JqlQueriesToParse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

