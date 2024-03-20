# OperationMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | The human-readable message that describes the result. | 
**StatusCode** | **Int32** | The status code of the response. | 

## Examples

- Prepare the resource
```powershell
$OperationMessage = Initialize-PSJiraOperationMessage  -Message null `
 -StatusCode null
```

- Convert the resource to JSON
```powershell
$OperationMessage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

