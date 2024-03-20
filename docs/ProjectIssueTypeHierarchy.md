# ProjectIssueTypeHierarchy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BaseLevelId** | **Int64** | The ID of the base level. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/). | [optional] 
**Levels** | [**SimplifiedHierarchyLevel[]**](SimplifiedHierarchyLevel.md) | Details about the hierarchy level. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectIssueTypeHierarchy = Initialize-PSJiraProjectIssueTypeHierarchy  -BaseLevelId null `
 -Levels null
```

- Convert the resource to JSON
```powershell
$ProjectIssueTypeHierarchy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

