# JQLPersonalDataMigrationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QueryStrings** | **String[]** | A list of queries with user identifiers. Maximum of 100 queries. | [optional] 

## Examples

- Prepare the resource
```powershell
$JQLPersonalDataMigrationRequest = Initialize-PSJiraJQLPersonalDataMigrationRequest  -QueryStrings null
```

- Convert the resource to JSON
```powershell
$JQLPersonalDataMigrationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

