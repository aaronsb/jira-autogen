# CompoundClause
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Clauses** | [**JqlQueryClause[]**](JqlQueryClause.md) | The list of nested clauses. | 
**Operator** | **String** | The operator between the clauses. | 

## Examples

- Prepare the resource
```powershell
$CompoundClause = Initialize-PSJiraCompoundClause  -Clauses null `
 -Operator null
```

- Convert the resource to JSON
```powershell
$CompoundClause | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

