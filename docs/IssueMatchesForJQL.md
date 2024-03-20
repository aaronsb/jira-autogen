# IssueMatchesForJQL
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Errors** | **String[]** | A list of errors. | 
**MatchedIssues** | **Int64[]** | A list of issue IDs. | 

## Examples

- Prepare the resource
```powershell
$IssueMatchesForJQL = Initialize-PSJiraIssueMatchesForJQL  -Errors null `
 -MatchedIssues null
```

- Convert the resource to JSON
```powershell
$IssueMatchesForJQL | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

