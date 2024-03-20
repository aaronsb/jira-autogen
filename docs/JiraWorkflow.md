# JiraWorkflow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the workflow. | [optional] 
**Id** | **String** | The ID of the workflow. | [optional] 
**IsEditable** | **Boolean** | Indicates if the workflow can be edited. | [optional] 
**Name** | **String** | The name of the workflow. | [optional] 
**Scope** | [**WorkflowScope**](WorkflowScope.md) |  | [optional] 
**StartPointLayout** | [**WorkflowLayout**](WorkflowLayout.md) |  | [optional] 
**Statuses** | [**WorkflowReferenceStatus[]**](WorkflowReferenceStatus.md) | The statuses referenced in this workflow. | [optional] 
**TaskId** | **String** | If there is a current [asynchronous task](#async-operations) operation for this workflow. | [optional] 
**Transitions** | [**WorkflowTransitions[]**](WorkflowTransitions.md) | The transitions of the workflow. | [optional] 
**Usages** | [**ProjectIssueTypes[]**](ProjectIssueTypes.md) | Use the optional &#x60;workflows.usages&#x60; expand to get additional information about the projects and issue types associated with the requested workflows. | [optional] 
**Version** | [**DocumentVersion**](DocumentVersion.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraWorkflow = Initialize-PSJiraJiraWorkflow  -Description null `
 -Id null `
 -IsEditable null `
 -Name null `
 -Scope null `
 -StartPointLayout null `
 -Statuses null `
 -TaskId null `
 -Transitions null `
 -Usages null `
 -Version null
```

- Convert the resource to JSON
```powershell
$JiraWorkflow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

