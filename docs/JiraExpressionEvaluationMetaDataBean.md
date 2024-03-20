# JiraExpressionEvaluationMetaDataBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Complexity** | [**JiraExpressionsComplexityBean**](JiraExpressionsComplexityBean.md) | Contains information about the expression complexity. For example, the number of steps it took to evaluate the expression. | [optional] 
**Issues** | [**IssuesMetaBean**](IssuesMetaBean.md) | Contains information about the &#x60;issues&#x60; variable in the context. For example, is the issues were loaded with JQL, information about the page will be included here. | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraExpressionEvaluationMetaDataBean = Initialize-PSJiraJiraExpressionEvaluationMetaDataBean  -Complexity null `
 -Issues null
```

- Convert the resource to JSON
```powershell
$JiraExpressionEvaluationMetaDataBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

