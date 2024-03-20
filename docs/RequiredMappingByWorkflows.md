# RequiredMappingByWorkflows
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceWorkflowId** | **String** | The ID of the source workflow. | [optional] 
**StatusIds** | **String[]** | The status IDs requiring mapping. | [optional] 
**TargetWorkflowId** | **String** | The ID of the target workflow. | [optional] 

## Examples

- Prepare the resource
```powershell
$RequiredMappingByWorkflows = Initialize-PSJiraRequiredMappingByWorkflows  -SourceWorkflowId null `
 -StatusIds null `
 -TargetWorkflowId null
```

- Convert the resource to JSON
```powershell
$RequiredMappingByWorkflows | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

