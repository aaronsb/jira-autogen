# NewUserDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationKeys** | **String[]** | Deprecated, do not use. | [optional] 
**DisplayName** | **String** | This property is no longer available. If the user has an Atlassian account, their display name is not changed. If the user does not have an Atlassian account, they are sent an email asking them set up an account. | [optional] 
**EmailAddress** | **String** | The email address for the user. | 
**Key** | **String** | This property is no longer available. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] 
**Name** | **String** | This property is no longer available. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] 
**Password** | **String** | This property is no longer available. If the user has an Atlassian account, their password is not changed. If the user does not have an Atlassian account, they are sent an email asking them set up an account. | [optional] 
**Products** | **String[]** | Products the new user has access to. Valid products are: jira-core, jira-servicedesk, jira-product-discovery, jira-software. If left empty, the user will get default product access. To create a user without product access, set this field to be an empty array. | [optional] 
**Self** | **String** | The URL of the user. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$NewUserDetails = Initialize-PSJiraNewUserDetails  -ApplicationKeys null `
 -DisplayName null `
 -EmailAddress null `
 -Key null `
 -Name null `
 -Password null `
 -Products null `
 -Self null
```

- Convert the resource to JSON
```powershell
$NewUserDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

