# WorkflowValidationError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **String** | An error code. | [optional] 
**ElementReference** | [**WorkflowElementReference**](WorkflowElementReference.md) |  | [optional] 
**Level** | **String** | The validation error level. | [optional] 
**Message** | **String** | An error message. | [optional] 
**Type** | **String** | The type of element the error or warning references. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowValidationError = Initialize-PSJiraWorkflowValidationError  -Code null `
 -ElementReference null `
 -Level null `
 -Message null `
 -Type null
```

- Convert the resource to JSON
```powershell
$WorkflowValidationError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

