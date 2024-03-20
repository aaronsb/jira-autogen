# Avatar
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FileName** | **String** | The file name of the avatar icon. Returned for system avatars. | [optional] [readonly] 
**Id** | **String** | The ID of the avatar. | 
**IsDeletable** | **Boolean** | Whether the avatar can be deleted. | [optional] [readonly] 
**IsSelected** | **Boolean** | Whether the avatar is used in Jira. For example, shown as a project&#39;s avatar. | [optional] [readonly] 
**IsSystemAvatar** | **Boolean** | Whether the avatar is a system avatar. | [optional] [readonly] 
**Owner** | **String** | The owner of the avatar. For a system avatar the owner is null (and nothing is returned). For non-system avatars this is the appropriate identifier, such as the ID for a project or the account ID for a user. | [optional] [readonly] 
**Urls** | **System.Collections.Hashtable** | The list of avatar icon URLs. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Avatar = Initialize-PSJiraAvatar  -FileName null `
 -Id null `
 -IsDeletable null `
 -IsSelected null `
 -IsSystemAvatar null `
 -Owner null `
 -Urls null
```

- Convert the resource to JSON
```powershell
$Avatar | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

