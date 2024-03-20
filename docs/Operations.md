# Operations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LinkGroups** | [**LinkGroup[]**](LinkGroup.md) | Details of the link groups defining issue operations. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Operations = Initialize-PSJiraOperations  -LinkGroups null
```

- Convert the resource to JSON
```powershell
$Operations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

