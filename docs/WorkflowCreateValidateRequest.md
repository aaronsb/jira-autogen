# WorkflowCreateValidateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Payload** | [**WorkflowCreateRequest**](WorkflowCreateRequest.md) |  | 
**ValidationOptions** | [**ValidationOptionsForCreate**](ValidationOptionsForCreate.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowCreateValidateRequest = Initialize-PSJiraWorkflowCreateValidateRequest  -Payload null `
 -ValidationOptions null
```

- Convert the resource to JSON
```powershell
$WorkflowCreateValidateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

