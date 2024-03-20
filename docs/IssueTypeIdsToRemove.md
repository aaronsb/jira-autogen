# IssueTypeIdsToRemove
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeIds** | **String[]** | The list of issue type IDs. Must contain unique values not longer than 255 characters and not be empty. Maximum of 100 IDs. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeIdsToRemove = Initialize-PSJiraIssueTypeIdsToRemove  -IssueTypeIds null
```

- Convert the resource to JSON
```powershell
$IssueTypeIdsToRemove | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

