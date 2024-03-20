# Workflow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | The creation date of the workflow. | [optional] 
**Description** | **String** | The description of the workflow. | 
**HasDraftWorkflow** | **Boolean** | Whether the workflow has a draft version. | [optional] 
**Id** | [**PublishedWorkflowId**](PublishedWorkflowId.md) |  | 
**IsDefault** | **Boolean** | Whether this is the default workflow. | [optional] 
**Operations** | [**WorkflowOperations**](WorkflowOperations.md) |  | [optional] 
**Projects** | [**ProjectDetails[]**](ProjectDetails.md) | The projects the workflow is assigned to, through workflow schemes. | [optional] 
**Schemes** | [**WorkflowSchemeIdName[]**](WorkflowSchemeIdName.md) | The workflow schemes the workflow is assigned to. | [optional] 
**Statuses** | [**WorkflowStatus[]**](WorkflowStatus.md) | The statuses of the workflow. | [optional] 
**Transitions** | [**Transition[]**](Transition.md) | The transitions of the workflow. | [optional] 
**Updated** | **System.DateTime** | The last edited date of the workflow. | [optional] 

## Examples

- Prepare the resource
```powershell
$Workflow = Initialize-PSJiraWorkflow  -Created null `
 -Description null `
 -HasDraftWorkflow null `
 -Id null `
 -IsDefault null `
 -Operations null `
 -Projects null `
 -Schemes null `
 -Statuses null `
 -Transitions null `
 -Updated null
```

- Convert the resource to JSON
```powershell
$Workflow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

