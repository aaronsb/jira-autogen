# WorkflowAssociationStatusMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewStatusId** | **String** | The ID of the status in the new workflow. | 
**OldStatusId** | **String** | The ID of the status in the old workflow that isn&#39;t present in the new workflow. | 

## Examples

- Prepare the resource
```powershell
$WorkflowAssociationStatusMapping = Initialize-PSJiraWorkflowAssociationStatusMapping  -NewStatusId null `
 -OldStatusId null
```

- Convert the resource to JSON
```powershell
$WorkflowAssociationStatusMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

