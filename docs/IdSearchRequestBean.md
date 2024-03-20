# IdSearchRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Jql** | **String** | A [JQL](https://confluence.atlassian.com/x/egORLQ) expression. Order by clauses are not allowed. | [optional] 
**MaxResults** | **Int32** | The maximum number of items to return per page. | [optional] [default to 1000]
**NextPageToken** | **String** | The continuation token to fetch the next page. This token is provided by the response of this endpoint. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdSearchRequestBean = Initialize-PSJiraIdSearchRequestBean  -Jql null `
 -MaxResults null `
 -NextPageToken null
```

- Convert the resource to JSON
```powershell
$IdSearchRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

