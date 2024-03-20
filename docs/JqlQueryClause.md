# JqlQueryClause
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Clauses** | [**JqlQueryClause[]**](JqlQueryClause.md) | The list of nested clauses. | 
**Operator** | **String** | The operator applied to the field. | 
**Field** | [**JqlQueryField**](JqlQueryField.md) |  | 
**Operand** | [**JqlQueryClauseOperand**](JqlQueryClauseOperand.md) |  | 
**Predicates** | [**JqlQueryClauseTimePredicate[]**](JqlQueryClauseTimePredicate.md) | The list of time predicates. | 

## Examples

- Prepare the resource
```powershell
$JqlQueryClause = Initialize-PSJiraJqlQueryClause  -Clauses null `
 -Operator null `
 -Field null `
 -Operand null `
 -Predicates null
```

- Convert the resource to JSON
```powershell
$JqlQueryClause | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

