# IssueMatches
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarMatches** | [**IssueMatchesForJQL[]**](IssueMatchesForJQL.md) |  | 

## Examples

- Prepare the resource
```powershell
$IssueMatches = Initialize-PSJiraIssueMatches  -VarMatches null
```

- Convert the resource to JSON
```powershell
$IssueMatches | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

