# JqlQueryClauseTimePredicate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operand** | [**JqlQueryClauseOperand**](JqlQueryClauseOperand.md) |  | 
**Operator** | **String** | The operator between the field and the operand. | 

## Examples

- Prepare the resource
```powershell
$JqlQueryClauseTimePredicate = Initialize-PSJiraJqlQueryClauseTimePredicate  -Operand null `
 -Operator null
```

- Convert the resource to JSON
```powershell
$JqlQueryClauseTimePredicate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

