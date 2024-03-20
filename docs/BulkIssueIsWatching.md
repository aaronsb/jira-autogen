# BulkIssueIsWatching
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssuesIsWatching** | **System.Collections.Hashtable** | The map of issue ID to boolean watch status. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$BulkIssueIsWatching = Initialize-PSJiraBulkIssueIsWatching  -IssuesIsWatching null
```

- Convert the resource to JSON
```powershell
$BulkIssueIsWatching | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

