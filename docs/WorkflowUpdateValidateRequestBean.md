# WorkflowUpdateValidateRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Payload** | [**WorkflowUpdateRequest**](WorkflowUpdateRequest.md) |  | 
**ValidationOptions** | [**ValidationOptionsForUpdate**](ValidationOptionsForUpdate.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowUpdateValidateRequestBean = Initialize-PSJiraWorkflowUpdateValidateRequestBean  -Payload null `
 -ValidationOptions null
```

- Convert the resource to JSON
```powershell
$WorkflowUpdateValidateRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

