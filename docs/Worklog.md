# Worklog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Author** | [**WorklogAuthor**](WorklogAuthor.md) |  | [optional] 
**Comment** | [**AnyType**](.md) | A comment about the worklog in [Atlassian Document Format](https://developer.atlassian.com/cloud/jira/platform/apis/document/structure/). Optional when creating or updating a worklog. | [optional] 
**Created** | **System.DateTime** | The datetime on which the worklog was created. | [optional] [readonly] 
**Id** | **String** | The ID of the worklog record. | [optional] [readonly] 
**IssueId** | **String** | The ID of the issue this worklog is for. | [optional] [readonly] 
**Properties** | [**EntityProperty[]**](EntityProperty.md) | Details of properties for the worklog. Optional when creating or updating a worklog. | [optional] 
**Self** | **String** | The URL of the worklog item. | [optional] [readonly] 
**Started** | **System.DateTime** | The datetime on which the worklog effort was started. Required when creating a worklog. Optional when updating a worklog. | [optional] 
**TimeSpent** | **String** | The time spent working on the issue as days (\#d), hours (\#h), or minutes (\#m or \#). Required when creating a worklog if &#x60;timeSpentSeconds&#x60; isn&#39;t provided. Optional when updating a worklog. Cannot be provided if &#x60;timeSpentSecond&#x60; is provided. | [optional] 
**TimeSpentSeconds** | **Int64** | The time in seconds spent working on the issue. Required when creating a worklog if &#x60;timeSpent&#x60; isn&#39;t provided. Optional when updating a worklog. Cannot be provided if &#x60;timeSpent&#x60; is provided. | [optional] 
**UpdateAuthor** | [**WorklogUpdateAuthor**](WorklogUpdateAuthor.md) |  | [optional] 
**Updated** | **System.DateTime** | The datetime on which the worklog was last updated. | [optional] [readonly] 
**Visibility** | [**Visibility**](Visibility.md) | Details about any restrictions in the visibility of the worklog. Optional when creating or updating a worklog. | [optional] 

## Examples

- Prepare the resource
```powershell
$Worklog = Initialize-PSJiraWorklog  -Author null `
 -Comment null `
 -Created null `
 -Id null `
 -IssueId null `
 -Properties null `
 -Self null `
 -Started null `
 -TimeSpent null `
 -TimeSpentSeconds null `
 -UpdateAuthor null `
 -Updated null `
 -Visibility null
```

- Convert the resource to JSON
```powershell
$Worklog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

