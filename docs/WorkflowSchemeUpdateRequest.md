# WorkflowSchemeUpdateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultWorkflowId** | **String** | The ID of the workflow for issue types without having a mapping defined in this workflow scheme. Only used in global-scoped workflow schemes. If the &#x60;defaultWorkflowId&#x60; isn&#39;t specified, this is set to *Jira Workflow (jira)*. | [optional] 
**Description** | **String** | The new description for this workflow scheme. | 
**Id** | **String** | The ID of this workflow scheme. | 
**Name** | **String** | The new name for this workflow scheme. | 
**StatusMappingsByIssueTypeOverride** | [**MappingsByIssueTypeOverride[]**](MappingsByIssueTypeOverride.md) | Overrides, for the selected issue types, any status mappings provided in &#x60;statusMappingsByWorkflows&#x60;. Status mappings are required when the new workflow for an issue type doesn&#39;t contain all statuses that the old workflow has. Status mappings can be provided by a combination of &#x60;statusMappingsByWorkflows&#x60; and &#x60;statusMappingsByIssueTypeOverride&#x60;. | [optional] 
**StatusMappingsByWorkflows** | [**MappingsByWorkflow[]**](MappingsByWorkflow.md) | The status mappings by workflows. Status mappings are required when the new workflow for an issue type doesn&#39;t contain all statuses that the old workflow has. Status mappings can be provided by a combination of &#x60;statusMappingsByWorkflows&#x60; and &#x60;statusMappingsByIssueTypeOverride&#x60;. | [optional] 
**Version** | [**DocumentVersion**](DocumentVersion.md) |  | 
**WorkflowsForIssueTypes** | [**WorkflowSchemeAssociation[]**](WorkflowSchemeAssociation.md) | Mappings from workflows to issue types. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeUpdateRequest = Initialize-PSJiraWorkflowSchemeUpdateRequest  -DefaultWorkflowId null `
 -Description null `
 -Id null `
 -Name null `
 -StatusMappingsByIssueTypeOverride null `
 -StatusMappingsByWorkflows null `
 -Version null `
 -WorkflowsForIssueTypes null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeUpdateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

