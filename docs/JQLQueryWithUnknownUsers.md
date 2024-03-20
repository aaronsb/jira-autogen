# JQLQueryWithUnknownUsers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConvertedQuery** | **String** | The converted query, with accountIDs instead of user identifiers, or &#39;unknown&#39; for users that could not be found | [optional] 
**OriginalQuery** | **String** | The original query, for reference | [optional] 

## Examples

- Prepare the resource
```powershell
$JQLQueryWithUnknownUsers = Initialize-PSJiraJQLQueryWithUnknownUsers  -ConvertedQuery null `
 -OriginalQuery null
```

- Convert the resource to JSON
```powershell
$JQLQueryWithUnknownUsers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

