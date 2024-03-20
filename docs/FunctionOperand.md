# FunctionOperand
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Arguments** | **String[]** | The list of function arguments. | 
**EncodedOperand** | **String** | Encoded operand, which can be used directly in a JQL query. | [optional] 
**VarFunction** | **String** | The name of the function. | 

## Examples

- Prepare the resource
```powershell
$FunctionOperand = Initialize-PSJiraFunctionOperand  -Arguments null `
 -EncodedOperand null `
 -VarFunction null
```

- Convert the resource to JSON
```powershell
$FunctionOperand | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

