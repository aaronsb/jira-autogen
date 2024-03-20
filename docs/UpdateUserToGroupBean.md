# UpdateUserToGroupBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] 
**Name** | **String** | This property is no longer available. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateUserToGroupBean = Initialize-PSJiraUpdateUserToGroupBean  -AccountId null `
 -Name null
```

- Convert the resource to JSON
```powershell
$UpdateUserToGroupBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

