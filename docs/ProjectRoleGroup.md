# ProjectRoleGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** | The display name of the group. | [optional] 
**GroupId** | **String** | The ID of the group. | [optional] 
**Name** | **String** | The name of the group. As a group&#39;s name can change, use of &#x60;groupId&#x60; is recommended to identify the group. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectRoleGroup = Initialize-PSJiraProjectRoleGroup  -DisplayName null `
 -GroupId null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ProjectRoleGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

