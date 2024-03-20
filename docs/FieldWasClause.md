# FieldWasClause
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Field** | [**JqlQueryField**](JqlQueryField.md) |  | 
**Operand** | [**JqlQueryClauseOperand**](JqlQueryClauseOperand.md) |  | 
**Operator** | **String** | The operator between the field and operand. | 
**Predicates** | [**JqlQueryClauseTimePredicate[]**](JqlQueryClauseTimePredicate.md) | The list of time predicates. | 

## Examples

- Prepare the resource
```powershell
$FieldWasClause = Initialize-PSJiraFieldWasClause  -Field null `
 -Operand null `
 -Operator null `
 -Predicates null
```

- Convert the resource to JSON
```powershell
$FieldWasClause | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

