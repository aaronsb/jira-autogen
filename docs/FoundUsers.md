# FoundUsers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Header** | **String** | Header text indicating the number of users in the response and the total number of users found in the search. | [optional] 
**Total** | **Int32** | The total number of users found in the search. | [optional] 
**Users** | [**UserPickerUser[]**](UserPickerUser.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FoundUsers = Initialize-PSJiraFoundUsers  -Header null `
 -Total null `
 -Users null
```

- Convert the resource to JSON
```powershell
$FoundUsers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

