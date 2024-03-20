# JqlQueryClauseOperand
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EncodedOperand** | **String** | Encoded operand, which can be used directly in a JQL query. | [optional] 
**Values** | [**JqlQueryUnitaryOperand[]**](JqlQueryUnitaryOperand.md) | The list of operand values. | 
**EncodedValue** | **String** | Encoded value, which can be used directly in a JQL query. | [optional] 
**Value** | **String** | The operand value. | 
**Arguments** | **String[]** | The list of function arguments. | 
**VarFunction** | **String** | The name of the function. | 
**Keyword** | **String** | The keyword that is the operand value. | 

## Examples

- Prepare the resource
```powershell
$JqlQueryClauseOperand = Initialize-PSJiraJqlQueryClauseOperand  -EncodedOperand null `
 -Values null `
 -EncodedValue null `
 -Value null `
 -Arguments null `
 -VarFunction null `
 -Keyword null
```

- Convert the resource to JSON
```powershell
$JqlQueryClauseOperand | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

