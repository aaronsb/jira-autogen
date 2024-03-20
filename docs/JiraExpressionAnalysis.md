# JiraExpressionAnalysis
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Complexity** | [**JiraExpressionComplexity**](JiraExpressionComplexity.md) |  | [optional] 
**Errors** | [**JiraExpressionValidationError[]**](JiraExpressionValidationError.md) | A list of validation errors. Not included if the expression is valid. | [optional] 
**Expression** | **String** | The analysed expression. | 
**Type** | **String** | EXPERIMENTAL. The inferred type of the expression. | [optional] 
**Valid** | **Boolean** | Whether the expression is valid and the interpreter will evaluate it. Note that the expression may fail at runtime (for example, if it executes too many expensive operations). | 

## Examples

- Prepare the resource
```powershell
$JiraExpressionAnalysis = Initialize-PSJiraJiraExpressionAnalysis  -Complexity null `
 -Errors null `
 -Expression null `
 -Type null `
 -Valid null
```

- Convert the resource to JSON
```powershell
$JiraExpressionAnalysis | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

