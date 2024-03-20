# JqlQueryUnitaryOperand
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EncodedValue** | **String** | Encoded value, which can be used directly in a JQL query. | [optional] 
**Value** | **String** | The operand value. | 
**Arguments** | **String[]** | The list of function arguments. | 
**EncodedOperand** | **String** | Encoded operand, which can be used directly in a JQL query. | [optional] 
**VarFunction** | **String** | The name of the function. | 
**Keyword** | **String** | The keyword that is the operand value. | 

## Examples

- Prepare the resource
```powershell
$JqlQueryUnitaryOperand = Initialize-PSJiraJqlQueryUnitaryOperand  -EncodedValue null `
 -Value null `
 -Arguments null `
 -EncodedOperand null `
 -VarFunction null `
 -Keyword null
```

- Convert the resource to JSON
```powershell
$JqlQueryUnitaryOperand | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

