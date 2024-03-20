# ConvertedJQLQueries
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QueriesWithUnknownUsers** | [**JQLQueryWithUnknownUsers[]**](JQLQueryWithUnknownUsers.md) | List of queries containing user information that could not be mapped to an existing user | [optional] 
**QueryStrings** | **String[]** | The list of converted query strings with account IDs in place of user identifiers. | [optional] 

## Examples

- Prepare the resource
```powershell
$ConvertedJQLQueries = Initialize-PSJiraConvertedJQLQueries  -QueriesWithUnknownUsers null `
 -QueryStrings null
```

- Convert the resource to JSON
```powershell
$ConvertedJQLQueries | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

