# ArchivedIssuesFilterRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ArchivedBy** | **String[]** | List archived issues archived by a specified account ID. | [optional] 
**ArchivedDateRange** | [**DateRangeFilterRequest**](DateRangeFilterRequest.md) |  | [optional] 
**IssueTypes** | **String[]** | List archived issues with a specified issue type ID. | [optional] 
**Projects** | **String[]** | List archived issues with a specified project key. | [optional] 
**Reporters** | **String[]** | List archived issues where the reporter is a specified account ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$ArchivedIssuesFilterRequest = Initialize-PSJiraArchivedIssuesFilterRequest  -ArchivedBy null `
 -ArchivedDateRange null `
 -IssueTypes null `
 -Projects null `
 -Reporters null
```

- Convert the resource to JSON
```powershell
$ArchivedIssuesFilterRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

