# PageOfStatuses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsLast** | **Boolean** | Whether this is the last page. | [optional] 
**MaxResults** | **Int32** | The maximum number of items that could be returned. | [optional] 
**NextPage** | **String** | The URL of the next page of results, if any. | [optional] 
**Self** | **String** | The URL of this page. | [optional] 
**StartAt** | **Int64** | The index of the first item returned on the page. | [optional] 
**Total** | **Int64** | Number of items that satisfy the search. | [optional] 
**Values** | [**JiraStatus[]**](JiraStatus.md) | The list of items. | [optional] 

## Examples

- Prepare the resource
```powershell
$PageOfStatuses = Initialize-PSJiraPageOfStatuses  -IsLast null `
 -MaxResults null `
 -NextPage null `
 -Self null `
 -StartAt null `
 -Total null `
 -Values null
```

- Convert the resource to JSON
```powershell
$PageOfStatuses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

