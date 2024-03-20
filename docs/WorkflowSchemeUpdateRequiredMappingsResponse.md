# WorkflowSchemeUpdateRequiredMappingsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StatusMappingsByIssueTypes** | [**RequiredMappingByIssueType[]**](RequiredMappingByIssueType.md) | The list of required status mappings by issue type. | [optional] 
**StatusMappingsByWorkflows** | [**RequiredMappingByWorkflows[]**](RequiredMappingByWorkflows.md) | The list of required status mappings by workflow. | [optional] 
**Statuses** | [**StatusMetadata[]**](StatusMetadata.md) | The details of the statuses in the associated workflows. | [optional] 
**StatusesPerWorkflow** | [**StatusesPerWorkflow[]**](StatusesPerWorkflow.md) | The statuses associated with each workflow. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeUpdateRequiredMappingsResponse = Initialize-PSJiraWorkflowSchemeUpdateRequiredMappingsResponse  -StatusMappingsByIssueTypes null `
 -StatusMappingsByWorkflows null `
 -Statuses null `
 -StatusesPerWorkflow null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeUpdateRequiredMappingsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

