# ProjectIssueTypesHierarchyLevel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityId** | **String** | The ID of the issue type hierarchy level. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/). | [optional] [readonly] 
**IssueTypes** | [**IssueTypeInfo[]**](IssueTypeInfo.md) | The list of issue types in the hierarchy level. | [optional] [readonly] 
**Level** | **Int32** | The level of the issue type hierarchy level. | [optional] [readonly] 
**Name** | **String** | The name of the issue type hierarchy level. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectIssueTypesHierarchyLevel = Initialize-PSJiraProjectIssueTypesHierarchyLevel  -EntityId null `
 -IssueTypes null `
 -Level null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ProjectIssueTypesHierarchyLevel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

