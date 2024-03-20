# Comment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Author** | [**CommentAuthor**](CommentAuthor.md) |  | [optional] 
**Body** | [**AnyType**](.md) | The comment text in [Atlassian Document Format](https://developer.atlassian.com/cloud/jira/platform/apis/document/structure/). | [optional] 
**Created** | **System.DateTime** | The date and time at which the comment was created. | [optional] [readonly] 
**Id** | **String** | The ID of the comment. | [optional] [readonly] 
**JsdAuthorCanSeeRequest** | **Boolean** | Whether the comment was added from an email sent by a person who is not part of the issue. See [Allow external emails to be added as comments on issues](https://support.atlassian.com/jira-service-management-cloud/docs/allow-external-emails-to-be-added-as-comments-on-issues/)for information on setting up this feature. | [optional] [readonly] 
**JsdPublic** | **Boolean** | Whether the comment is visible in Jira Service Desk. Defaults to true when comments are created in the Jira Cloud Platform. This includes when the site doesn&#39;t use Jira Service Desk or the project isn&#39;t a Jira Service Desk project and, therefore, there is no Jira Service Desk for the issue to be visible on. To create a comment with its visibility in Jira Service Desk set to false, use the Jira Service Desk REST API [Create request comment](https://developer.atlassian.com/cloud/jira/service-desk/rest/#api-rest-servicedeskapi-request-issueIdOrKey-comment-post) operation. | [optional] [readonly] 
**Properties** | [**EntityProperty[]**](EntityProperty.md) | A list of comment properties. Optional on create and update. | [optional] 
**RenderedBody** | **String** | The rendered version of the comment. | [optional] [readonly] 
**Self** | **String** | The URL of the comment. | [optional] [readonly] 
**UpdateAuthor** | [**CommentUpdateAuthor**](CommentUpdateAuthor.md) |  | [optional] 
**Updated** | **System.DateTime** | The date and time at which the comment was updated last. | [optional] [readonly] 
**Visibility** | [**Visibility**](Visibility.md) | The group or role to which this comment is visible. Optional on create and update. | [optional] 

## Examples

- Prepare the resource
```powershell
$Comment = Initialize-PSJiraComment  -Author null `
 -Body null `
 -Created null `
 -Id null `
 -JsdAuthorCanSeeRequest null `
 -JsdPublic null `
 -Properties null `
 -RenderedBody null `
 -Self null `
 -UpdateAuthor null `
 -Updated null `
 -Visibility null
```

- Convert the resource to JSON
```powershell
$Comment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

