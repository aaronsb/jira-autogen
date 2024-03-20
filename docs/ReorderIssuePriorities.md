# ReorderIssuePriorities
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**After** | **String** | The ID of the priority. Required if &#x60;position&#x60; isn&#39;t provided. | [optional] 
**Ids** | **String[]** | The list of issue IDs to be reordered. Cannot contain duplicates nor after ID. | 
**Position** | **String** | The position for issue priorities to be moved to. Required if &#x60;after&#x60; isn&#39;t provided. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReorderIssuePriorities = Initialize-PSJiraReorderIssuePriorities  -After null `
 -Ids null `
 -Position null
```

- Convert the resource to JSON
```powershell
$ReorderIssuePriorities | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

