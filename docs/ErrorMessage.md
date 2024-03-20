# ErrorMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | The error message. | 

## Examples

- Prepare the resource
```powershell
$ErrorMessage = Initialize-PSJiraErrorMessage  -Message null
```

- Convert the resource to JSON
```powershell
$ErrorMessage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

