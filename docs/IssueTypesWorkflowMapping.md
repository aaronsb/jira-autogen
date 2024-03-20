# IssueTypesWorkflowMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultMapping** | **Boolean** | Whether the workflow is the default workflow for the workflow scheme. | [optional] 
**IssueTypes** | **String[]** | The list of issue type IDs. | [optional] 
**UpdateDraftIfNeeded** | **Boolean** | Whether a draft workflow scheme is created or updated when updating an active workflow scheme. The draft is updated with the new workflow-issue types mapping. Defaults to &#x60;false&#x60;. | [optional] 
**Workflow** | **String** | The name of the workflow. Optional if updating the workflow-issue types mapping. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypesWorkflowMapping = Initialize-PSJiraIssueTypesWorkflowMapping  -DefaultMapping null `
 -IssueTypes null `
 -UpdateDraftIfNeeded null `
 -Workflow null
```

- Convert the resource to JSON
```powershell
$IssueTypesWorkflowMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

