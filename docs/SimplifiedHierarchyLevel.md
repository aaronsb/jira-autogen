# SimplifiedHierarchyLevel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AboveLevelId** | **Int64** | The ID of the level above this one in the hierarchy. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/). | [optional] 
**BelowLevelId** | **Int64** | The ID of the level below this one in the hierarchy. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/). | [optional] 
**ExternalUuid** | **String** | The external UUID of the hierarchy level. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/). | [optional] 
**HierarchyLevelNumber** | **Int32** |  | [optional] 
**Id** | **Int64** | The ID of the hierarchy level. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/). | [optional] 
**IssueTypeIds** | **Int64[]** | The issue types available in this hierarchy level. | [optional] 
**Level** | **Int32** | The level of this item in the hierarchy. | [optional] 
**Name** | **String** | The name of this hierarchy level. | [optional] 
**ProjectConfigurationId** | **Int64** | The ID of the project configuration. This property is deprecated, see [Change oticen: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/). | [optional] 

## Examples

- Prepare the resource
```powershell
$SimplifiedHierarchyLevel = Initialize-PSJiraSimplifiedHierarchyLevel  -AboveLevelId null `
 -BelowLevelId null `
 -ExternalUuid null `
 -HierarchyLevelNumber null `
 -Id null `
 -IssueTypeIds null `
 -Level null `
 -Name null `
 -ProjectConfigurationId null
```

- Convert the resource to JSON
```powershell
$SimplifiedHierarchyLevel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

