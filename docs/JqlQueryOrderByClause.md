# JqlQueryOrderByClause
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Fields** | [**JqlQueryOrderByClauseElement[]**](JqlQueryOrderByClauseElement.md) | The list of order-by clause fields and their ordering directives. | 

## Examples

- Prepare the resource
```powershell
$JqlQueryOrderByClause = Initialize-PSJiraJqlQueryOrderByClause  -Fields null
```

- Convert the resource to JSON
```powershell
$JqlQueryOrderByClause | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

