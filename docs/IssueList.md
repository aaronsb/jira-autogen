# IssueList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueIds** | **String[]** | The list of issue IDs. | 

## Examples

- Prepare the resource
```powershell
$IssueList = Initialize-PSJiraIssueList  -IssueIds null
```

- Convert the resource to JSON
```powershell
$IssueList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

