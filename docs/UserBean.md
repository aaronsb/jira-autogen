# UserBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] 
**Active** | **Boolean** | Whether the user is active. | [optional] 
**AvatarUrls** | [**UserBeanAvatarUrls**](UserBeanAvatarUrls.md) | The avatars of the user. | [optional] 
**DisplayName** | **String** | The display name of the user. Depending on the user’s privacy setting, this may return an alternative value. | [optional] 
**Key** | **String** | This property is deprecated in favor of &#x60;accountId&#x60; because of privacy changes. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.   The key of the user. | [optional] 
**Name** | **String** | This property is deprecated in favor of &#x60;accountId&#x60; because of privacy changes. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.   The username of the user. | [optional] 
**Self** | **String** | The URL of the user. | [optional] 

## Examples

- Prepare the resource
```powershell
$UserBean = Initialize-PSJiraUserBean  -AccountId null `
 -Active null `
 -AvatarUrls null `
 -DisplayName null `
 -Key null `
 -Name null `
 -Self null
```

- Convert the resource to JSON
```powershell
$UserBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

