# ProjectRoleUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. Returns *unknown* if the record is deleted and corrupted, for example, as the result of a server import. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectRoleUser = Initialize-PSJiraProjectRoleUser  -AccountId null
```

- Convert the resource to JSON
```powershell
$ProjectRoleUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

