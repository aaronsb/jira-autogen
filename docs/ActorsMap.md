# ActorsMap
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Group** | **String[]** | The name of the group to add. This parameter cannot be used with the &#x60;groupId&#x60; parameter. As a group&#39;s name can change, use of &#x60;groupId&#x60; is recommended. | [optional] 
**GroupId** | **String[]** | The ID of the group to add. This parameter cannot be used with the &#x60;group&#x60; parameter. | [optional] 
**User** | **String[]** | The user account ID of the user to add. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActorsMap = Initialize-PSJiraActorsMap  -Group null `
 -GroupId null `
 -User null
```

- Convert the resource to JSON
```powershell
$ActorsMap | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

