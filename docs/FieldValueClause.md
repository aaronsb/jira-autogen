# FieldValueClause
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Field** | [**JqlQueryField**](JqlQueryField.md) |  | 
**Operand** | [**JqlQueryClauseOperand**](JqlQueryClauseOperand.md) |  | 
**Operator** | **String** | The operator between the field and operand. | 

## Examples

- Prepare the resource
```powershell
$FieldValueClause = Initialize-PSJiraFieldValueClause  -Field null `
 -Operand null `
 -Operator null
```

- Convert the resource to JSON
```powershell
$FieldValueClause | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

