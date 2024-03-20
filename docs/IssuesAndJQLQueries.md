# IssuesAndJQLQueries
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueIds** | **Int64[]** | A list of issue IDs. | 
**Jqls** | **String[]** | A list of JQL queries. | 

## Examples

- Prepare the resource
```powershell
$IssuesAndJQLQueries = Initialize-PSJiraIssuesAndJQLQueries  -IssueIds null `
 -Jqls null
```

- Convert the resource to JSON
```powershell
$IssuesAndJQLQueries | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

