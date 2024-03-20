# WorkflowStatusAndPort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Port** | **Int32** | The port the transition is connected to this status. | [optional] 
**StatusReference** | **String** | The reference of this status. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowStatusAndPort = Initialize-PSJiraWorkflowStatusAndPort  -Port null `
 -StatusReference null
```

- Convert the resource to JSON
```powershell
$WorkflowStatusAndPort | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

