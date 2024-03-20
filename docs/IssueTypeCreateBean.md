# IssueTypeCreateBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the issue type. | [optional] 
**HierarchyLevel** | **Int32** | The hierarchy level of the issue type. Use:   *  &#x60;-1&#x60; for Subtask.  *  &#x60;0&#x60; for Base.  Defaults to &#x60;0&#x60;. | [optional] 
**Name** | **String** | The unique name for the issue type. The maximum length is 60 characters. | 
**Type** | **String** | Deprecated. Use &#x60;hierarchyLevel&#x60; instead. See the [deprecation notice](https://community.developer.atlassian.com/t/deprecation-of-the-epic-link-parent-link-and-other-related-fields-in-rest-apis-and-webhooks/54048) for details.  Whether the issue type is &#x60;subtype&#x60; or &#x60;standard&#x60;. Defaults to &#x60;standard&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeCreateBean = Initialize-PSJiraIssueTypeCreateBean  -Description null `
 -HierarchyLevel null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$IssueTypeCreateBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

