# JqlFunctionPrecomputationBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Arguments** | **String[]** | The list of arguments function was invoked with. | [optional] [readonly] 
**Created** | **System.DateTime** | The timestamp of the precomputation creation. | [optional] [readonly] 
**VarError** | **String** | The error message to be displayed to the user. | [optional] [readonly] 
**Field** | **String** | The field the function was executed against. | [optional] [readonly] 
**FunctionKey** | **String** | The function key. | [optional] [readonly] 
**FunctionName** | **String** | The name of the function. | [optional] [readonly] 
**Id** | **String** | The id of the precomputation. | [optional] [readonly] 
**Operator** | **String** | The operator in context of which function was executed. | [optional] [readonly] 
**Updated** | **System.DateTime** | The timestamp of the precomputation last update. | [optional] [readonly] 
**Used** | **System.DateTime** | The timestamp of the precomputation last usage. | [optional] [readonly] 
**Value** | **String** | The JQL fragment stored as the precomputation. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$JqlFunctionPrecomputationBean = Initialize-PSJiraJqlFunctionPrecomputationBean  -Arguments null `
 -Created null `
 -VarError null `
 -Field null `
 -FunctionKey null `
 -FunctionName null `
 -Id null `
 -Operator null `
 -Updated null `
 -Used null `
 -Value null
```

- Convert the resource to JSON
```powershell
$JqlFunctionPrecomputationBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

