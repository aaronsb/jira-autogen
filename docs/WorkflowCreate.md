# WorkflowCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the workflow to create. | [optional] 
**Name** | **String** | The name of the workflow to create. | 
**StartPointLayout** | [**WorkflowLayout**](WorkflowLayout.md) |  | [optional] 
**Statuses** | [**StatusLayoutUpdate[]**](StatusLayoutUpdate.md) | The statuses associated with this workflow. | 
**Transitions** | [**TransitionUpdateDTO[]**](TransitionUpdateDTO.md) | The transitions of this workflow. | 

## Examples

- Prepare the resource
```powershell
$WorkflowCreate = Initialize-PSJiraWorkflowCreate  -Description null `
 -Name null `
 -StartPointLayout null `
 -Statuses null `
 -Transitions null
```

- Convert the resource to JSON
```powershell
$WorkflowCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

