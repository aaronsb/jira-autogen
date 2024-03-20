# IssueBeanOperations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LinkGroups** | [**LinkGroup[]**](LinkGroup.md) | Details of the link groups defining issue operations. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueBeanOperations = Initialize-PSJiraIssueBeanOperations  -LinkGroups null
```

- Convert the resource to JSON
```powershell
$IssueBeanOperations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

