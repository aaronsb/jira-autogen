# ContainerOfWorkflowSchemeAssociations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Values** | [**WorkflowSchemeAssociations[]**](WorkflowSchemeAssociations.md) | A list of workflow schemes together with projects they are associated with. | 

## Examples

- Prepare the resource
```powershell
$ContainerOfWorkflowSchemeAssociations = Initialize-PSJiraContainerOfWorkflowSchemeAssociations  -Values null
```

- Convert the resource to JSON
```powershell
$ContainerOfWorkflowSchemeAssociations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

