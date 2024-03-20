# PublishedWorkflowId
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityId** | **String** | The entity ID of the workflow. | [optional] 
**Name** | **String** | The name of the workflow. | 

## Examples

- Prepare the resource
```powershell
$PublishedWorkflowId = Initialize-PSJiraPublishedWorkflowId  -EntityId null `
 -Name null
```

- Convert the resource to JSON
```powershell
$PublishedWorkflowId | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

