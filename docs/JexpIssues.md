# JexpIssues
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Jql** | [**JexpJqlIssues**](JexpJqlIssues.md) | The JQL query that specifies the set of issues available in the Jira expression. | [optional] 

## Examples

- Prepare the resource
```powershell
$JexpIssues = Initialize-PSJiraJexpIssues  -Jql null
```

- Convert the resource to JSON
```powershell
$JexpIssues | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

