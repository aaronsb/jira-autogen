# JiraExpressionsComplexityValueBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Limit** | **Int32** | The maximum allowed complexity. The evaluation will fail if this value is exceeded. | 
**Value** | **Int32** | The complexity value of the current expression. | 

## Examples

- Prepare the resource
```powershell
$JiraExpressionsComplexityValueBean = Initialize-PSJiraJiraExpressionsComplexityValueBean  -Limit null `
 -Value null
```

- Convert the resource to JSON
```powershell
$JiraExpressionsComplexityValueBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

