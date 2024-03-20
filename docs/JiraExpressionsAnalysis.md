# JiraExpressionsAnalysis
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**JiraExpressionAnalysis[]**](JiraExpressionAnalysis.md) | The results of Jira expressions analysis. | 

## Examples

- Prepare the resource
```powershell
$JiraExpressionsAnalysis = Initialize-PSJiraJiraExpressionsAnalysis  -Results null
```

- Convert the resource to JSON
```powershell
$JiraExpressionsAnalysis | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

