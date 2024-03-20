# Configuration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttachmentsEnabled** | **Boolean** | Whether the ability to add attachments to issues is enabled. | [optional] [readonly] 
**IssueLinkingEnabled** | **Boolean** | Whether the ability to link issues is enabled. | [optional] [readonly] 
**SubTasksEnabled** | **Boolean** | Whether the ability to create subtasks for issues is enabled. | [optional] [readonly] 
**TimeTrackingConfiguration** | [**ConfigurationTimeTrackingConfiguration**](ConfigurationTimeTrackingConfiguration.md) |  | [optional] 
**TimeTrackingEnabled** | **Boolean** | Whether the ability to track time is enabled. This property is deprecated. | [optional] [readonly] 
**UnassignedIssuesAllowed** | **Boolean** | Whether the ability to create unassigned issues is enabled. See [Configuring Jira application options](https://confluence.atlassian.com/x/uYXKM) for details. | [optional] [readonly] 
**VotingEnabled** | **Boolean** | Whether the ability for users to vote on issues is enabled. See [Configuring Jira application options](https://confluence.atlassian.com/x/uYXKM) for details. | [optional] [readonly] 
**WatchingEnabled** | **Boolean** | Whether the ability for users to watch issues is enabled. See [Configuring Jira application options](https://confluence.atlassian.com/x/uYXKM) for details. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Configuration = Initialize-PSJiraConfiguration  -AttachmentsEnabled null `
 -IssueLinkingEnabled null `
 -SubTasksEnabled null `
 -TimeTrackingConfiguration null `
 -TimeTrackingEnabled null `
 -UnassignedIssuesAllowed null `
 -VotingEnabled null `
 -WatchingEnabled null
```

- Convert the resource to JSON
```powershell
$Configuration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

