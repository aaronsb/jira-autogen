# IdSearchResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueIds** | **Int64[]** | The list of issue IDs found by the search. | [optional] [readonly] 
**NextPageToken** | **String** | Continuation token to fetch the next page. If this result represents the last or the only page this token will be null. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IdSearchResults = Initialize-PSJiraIdSearchResults  -IssueIds null `
 -NextPageToken null
```

- Convert the resource to JSON
```powershell
$IdSearchResults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

