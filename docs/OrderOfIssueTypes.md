# OrderOfIssueTypes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**After** | **String** | The ID of the issue type to place the moved issue types after. Required if &#x60;position&#x60; isn&#39;t provided. | [optional] 
**IssueTypeIds** | **String[]** | A list of the issue type IDs to move. The order of the issue type IDs in the list is the order they are given after the move. | 
**Position** | **String** | The position the issue types should be moved to. Required if &#x60;after&#x60; isn&#39;t provided. | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderOfIssueTypes = Initialize-PSJiraOrderOfIssueTypes  -After null `
 -IssueTypeIds null `
 -Position null
```

- Convert the resource to JSON
```powershell
$OrderOfIssueTypes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

