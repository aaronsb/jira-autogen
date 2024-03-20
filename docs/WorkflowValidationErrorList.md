# WorkflowValidationErrorList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Errors** | [**WorkflowValidationError[]**](WorkflowValidationError.md) | The list of validation errors. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowValidationErrorList = Initialize-PSJiraWorkflowValidationErrorList  -Errors null
```

- Convert the resource to JSON
```powershell
$WorkflowValidationErrorList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

