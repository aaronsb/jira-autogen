# JexpJqlIssues
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxResults** | **Int32** | The maximum number of issues to return from the JQL query. Inspect &#x60;meta.issues.jql.maxResults&#x60; in the response to ensure the maximum value has not been exceeded. | [optional] 
**Query** | **String** | The JQL query. | [optional] 
**StartAt** | **Int64** | The index of the first issue to return from the JQL query. | [optional] 
**Validation** | **String** | Determines how to validate the JQL query and treat the validation results. | [optional] [default to "strict"]

## Examples

- Prepare the resource
```powershell
$JexpJqlIssues = Initialize-PSJiraJexpJqlIssues  -MaxResults null `
 -Query null `
 -StartAt null `
 -Validation null
```

- Convert the resource to JSON
```powershell
$JexpJqlIssues | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

