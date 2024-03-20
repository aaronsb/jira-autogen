# FunctionReferenceData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** | The display name of the function. | [optional] 
**IsList** | **String** | Whether the function can take a list of arguments. | [optional] 
**SupportsListAndSingleValueOperators** | **String** | Whether the function supports both single and list value operators. | [optional] 
**Types** | **String[]** | The data types returned by the function. | [optional] 
**Value** | **String** | The function identifier. | [optional] 

## Examples

- Prepare the resource
```powershell
$FunctionReferenceData = Initialize-PSJiraFunctionReferenceData  -DisplayName null `
 -IsList null `
 -SupportsListAndSingleValueOperators null `
 -Types null `
 -Value null
```

- Convert the resource to JSON
```powershell
$FunctionReferenceData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

