# WorkflowSchemeUpdateRequiredMappingsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultWorkflowId** | **String** | The ID of the new default workflow for this workflow scheme. Only used in global-scoped workflow schemes. If it isn&#39;t specified, is set to *Jira Workflow (jira)*. | [optional] 
**Id** | **String** | The ID of the workflow scheme. | 
**WorkflowsForIssueTypes** | [**WorkflowSchemeAssociation[]**](WorkflowSchemeAssociation.md) | The new workflow to issue type mappings for this workflow scheme. | 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeUpdateRequiredMappingsRequest = Initialize-PSJiraWorkflowSchemeUpdateRequiredMappingsRequest  -DefaultWorkflowId null `
 -Id null `
 -WorkflowsForIssueTypes null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeUpdateRequiredMappingsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

