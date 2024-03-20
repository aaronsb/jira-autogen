# IssueCommentListRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **Int64[]** | The list of comment IDs. A maximum of 1000 IDs can be specified. | 

## Examples

- Prepare the resource
```powershell
$IssueCommentListRequestBean = Initialize-PSJiraIssueCommentListRequestBean  -Ids null
```

- Convert the resource to JSON
```powershell
$IssueCommentListRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

