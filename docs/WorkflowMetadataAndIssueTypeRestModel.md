# WorkflowMetadataAndIssueTypeRestModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeIds** | **String[]** | The list of issue type IDs for the mapping. | 
**Workflow** | [**WorkflowMetadataRestModel**](WorkflowMetadataRestModel.md) |  | 

## Examples

- Prepare the resource
```powershell
$WorkflowMetadataAndIssueTypeRestModel = Initialize-PSJiraWorkflowMetadataAndIssueTypeRestModel  -IssueTypeIds null `
 -Workflow null
```

- Convert the resource to JSON
```powershell
$WorkflowMetadataAndIssueTypeRestModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

