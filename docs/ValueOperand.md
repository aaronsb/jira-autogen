# ValueOperand
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EncodedValue** | **String** | Encoded value, which can be used directly in a JQL query. | [optional] 
**Value** | **String** | The operand value. | 

## Examples

- Prepare the resource
```powershell
$ValueOperand = Initialize-PSJiraValueOperand  -EncodedValue null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ValueOperand | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

