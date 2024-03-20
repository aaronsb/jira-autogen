# IssuesUpdateBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueUpdates** | [**IssueUpdateDetails[]**](IssueUpdateDetails.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssuesUpdateBean = Initialize-PSJiraIssuesUpdateBean  -IssueUpdates null
```

- Convert the resource to JSON
```powershell
$IssuesUpdateBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

