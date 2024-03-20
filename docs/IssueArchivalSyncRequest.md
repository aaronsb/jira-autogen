# IssueArchivalSyncRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueIdsOrKeys** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueArchivalSyncRequest = Initialize-PSJiraIssueArchivalSyncRequest  -IssueIdsOrKeys null
```

- Convert the resource to JSON
```powershell
$IssueArchivalSyncRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

