# WorkflowSchemeAssociation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeIds** | **String[]** | The issue types assigned to the workflow. | 
**WorkflowId** | **String** | The ID of the workflow. | 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeAssociation = Initialize-PSJiraWorkflowSchemeAssociation  -IssueTypeIds null `
 -WorkflowId null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeAssociation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

