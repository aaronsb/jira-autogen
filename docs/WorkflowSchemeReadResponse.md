# WorkflowSchemeReadResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultWorkflow** | [**WorkflowMetadataRestModel**](WorkflowMetadataRestModel.md) |  | [optional] 
**Description** | **String** | The description of the workflow scheme. | [optional] 
**Id** | **String** | The ID of the workflow scheme. | 
**Name** | **String** | The name of the workflow scheme. | 
**ProjectIdsUsingScheme** | **String[]** | The IDs of projects using the workflow scheme. | 
**Scope** | [**WorkflowScope**](WorkflowScope.md) |  | 
**TaskId** | **String** | Indicates if there&#39;s an [asynchronous task](#async-operations) for this workflow scheme. | [optional] 
**Version** | [**DocumentVersion**](DocumentVersion.md) |  | 
**WorkflowsForIssueTypes** | [**WorkflowMetadataAndIssueTypeRestModel[]**](WorkflowMetadataAndIssueTypeRestModel.md) | Mappings from workflows to issue types. | 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeReadResponse = Initialize-PSJiraWorkflowSchemeReadResponse  -DefaultWorkflow null `
 -Description null `
 -Id null `
 -Name null `
 -ProjectIdsUsingScheme null `
 -Scope null `
 -TaskId null `
 -Version null `
 -WorkflowsForIssueTypes null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeReadResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

