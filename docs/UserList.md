# UserList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndIndex** | **Int32** | The index of the last item returned on the page. | [optional] [readonly] 
**Items** | [**User[]**](User.md) | The list of items. | [optional] [readonly] 
**MaxResults** | **Int32** | The maximum number of results that could be on the page. | [optional] [readonly] 
**Size** | **Int32** | The number of items on the page. | [optional] [readonly] 
**StartIndex** | **Int32** | The index of the first item returned on the page. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$UserList = Initialize-PSJiraUserList  -EndIndex null `
 -Items null `
 -MaxResults null `
 -Size null `
 -StartIndex null
```

- Convert the resource to JSON
```powershell
$UserList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

