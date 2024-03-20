# UpdateProjectDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssigneeType** | **String** | The default assignee when creating issues for this project. | [optional] 
**AvatarId** | **Int64** | An integer value for the project&#39;s avatar. | [optional] 
**CategoryId** | **Int64** | The ID of the project&#39;s category. A complete list of category IDs is found using the [Get all project categories](#api-rest-api-3-projectCategory-get) operation. To remove the project category from the project, set the value to &#x60;-1.&#x60; | [optional] 
**Description** | **String** | A brief description of the project. | [optional] 
**IssueSecurityScheme** | **Int64** | The ID of the issue security scheme for the project, which enables you to control who can and cannot view issues. Use the [Get issue security schemes](#api-rest-api-3-issuesecurityschemes-get) resource to get all issue security scheme IDs. | [optional] 
**Key** | **String** | Project keys must be unique and start with an uppercase letter followed by one or more uppercase alphanumeric characters. The maximum length is 10 characters. | [optional] 
**Lead** | **String** | This parameter is deprecated because of privacy changes. Use &#x60;leadAccountId&#x60; instead. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. The user name of the project lead. Cannot be provided with &#x60;leadAccountId&#x60;. | [optional] 
**LeadAccountId** | **String** | The account ID of the project lead. Cannot be provided with &#x60;lead&#x60;. | [optional] 
**Name** | **String** | The name of the project. | [optional] 
**NotificationScheme** | **Int64** | The ID of the notification scheme for the project. Use the [Get notification schemes](#api-rest-api-3-notificationscheme-get) resource to get a list of notification scheme IDs. | [optional] 
**PermissionScheme** | **Int64** | The ID of the permission scheme for the project. Use the [Get all permission schemes](#api-rest-api-3-permissionscheme-get) resource to see a list of all permission scheme IDs. | [optional] 
**Url** | **String** | A link to information about this project, such as project documentation | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateProjectDetails = Initialize-PSJiraUpdateProjectDetails  -AssigneeType null `
 -AvatarId null `
 -CategoryId null `
 -Description null `
 -IssueSecurityScheme null `
 -Key null `
 -Lead null `
 -LeadAccountId null `
 -Name null `
 -NotificationScheme null `
 -PermissionScheme null `
 -Url null
```

- Convert the resource to JSON
```powershell
$UpdateProjectDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

