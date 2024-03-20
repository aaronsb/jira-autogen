# WorkflowMetadataRestModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the workflow. | 
**Id** | **String** | The ID of the workflow. | 
**Name** | **String** | The name of the workflow. | 
**Usage** | [**SimpleUsage[]**](SimpleUsage.md) | Use the optional &#x60;workflows.usages&#x60; expand to get additional information about the projects and issue types associated with the workflows in the workflow scheme. | 
**Version** | [**DocumentVersion**](DocumentVersion.md) |  | 

## Examples

- Prepare the resource
```powershell
$WorkflowMetadataRestModel = Initialize-PSJiraWorkflowMetadataRestModel  -Description null `
 -Id null `
 -Name null `
 -Usage null `
 -Version null
```

- Convert the resource to JSON
```powershell
$WorkflowMetadataRestModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

