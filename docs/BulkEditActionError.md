# BulkEditActionError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorMessages** | **String[]** | The error messages. | 
**Errors** | **System.Collections.Hashtable** | The errors. | 

## Examples

- Prepare the resource
```powershell
$BulkEditActionError = Initialize-PSJiraBulkEditActionError  -ErrorMessages null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$BulkEditActionError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

