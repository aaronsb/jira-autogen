# OrderOfCustomFieldOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**After** | **String** | The ID of the custom field option or cascading option to place the moved options after. Required if &#x60;position&#x60; isn&#39;t provided. | [optional] 
**CustomFieldOptionIds** | **String[]** | A list of IDs of custom field options to move. The order of the custom field option IDs in the list is the order they are given after the move. The list must contain custom field options or cascading options, but not both. | 
**Position** | **String** | The position the custom field options should be moved to. Required if &#x60;after&#x60; isn&#39;t provided. | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderOfCustomFieldOptions = Initialize-PSJiraOrderOfCustomFieldOptions  -After null `
 -CustomFieldOptionIds null `
 -Position null
```

- Convert the resource to JSON
```powershell
$OrderOfCustomFieldOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

