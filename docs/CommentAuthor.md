# CommentAuthor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] 
**AccountType** | **String** | The type of account represented by this user. This will be one of &#39;atlassian&#39; (normal users), &#39;app&#39; (application user) or &#39;customer&#39; (Jira Service Desk customer user) | [optional] [readonly] 
**Active** | **Boolean** | Whether the user is active. | [optional] [readonly] 
**AvatarUrls** | [**UserAvatarUrls**](UserAvatarUrls.md) |  | [optional] 
**DisplayName** | **String** | The display name of the user. Depending on the user’s privacy settings, this may return an alternative value. | [optional] [readonly] 
**EmailAddress** | **String** | The email address of the user. Depending on the user’s privacy settings, this may be returned as null. | [optional] [readonly] 
**Key** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [readonly] 
**Name** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [readonly] 
**Self** | **String** | The URL of the user. | [optional] [readonly] 
**TimeZone** | **String** | The time zone specified in the user&#39;s profile. Depending on the user’s privacy settings, this may be returned as null. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$CommentAuthor = Initialize-PSJiraCommentAuthor  -AccountId null `
 -AccountType null `
 -Active null `
 -AvatarUrls null `
 -DisplayName null `
 -EmailAddress null `
 -Key null `
 -Name null `
 -Self null `
 -TimeZone null
```

- Convert the resource to JSON
```powershell
$CommentAuthor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

