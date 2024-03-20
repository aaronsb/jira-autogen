# IssueArchivalSyncResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Errors** | [**Errors**](Errors.md) |  | [optional] 
**NumberOfIssuesUpdated** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueArchivalSyncResponse = Initialize-PSJiraIssueArchivalSyncResponse  -Errors null `
 -NumberOfIssuesUpdated null
```

- Convert the resource to JSON
```powershell
$IssueArchivalSyncResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

