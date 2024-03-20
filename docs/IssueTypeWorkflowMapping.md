# IssueTypeWorkflowMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueType** | **String** | The ID of the issue type. Not required if updating the issue type-workflow mapping. | [optional] 
**UpdateDraftIfNeeded** | **Boolean** | Set to true to create or update the draft of a workflow scheme and update the mapping in the draft, when the workflow scheme cannot be edited. Defaults to &#x60;false&#x60;. Only applicable when updating the workflow-issue types mapping. | [optional] 
**Workflow** | **String** | The name of the workflow. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeWorkflowMapping = Initialize-PSJiraIssueTypeWorkflowMapping  -IssueType null `
 -UpdateDraftIfNeeded null `
 -Workflow null
```

- Convert the resource to JSON
```powershell
$IssueTypeWorkflowMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

