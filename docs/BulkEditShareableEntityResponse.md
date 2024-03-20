# BulkEditShareableEntityResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **String** | Allowed action for bulk edit shareable entity | 
**EntityErrors** | [**System.Collections.Hashtable**](BulkEditActionError.md) | The mapping dashboard id to errors if any. | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkEditShareableEntityResponse = Initialize-PSJiraBulkEditShareableEntityResponse  -Action null `
 -EntityErrors null
```

- Convert the resource to JSON
```powershell
$BulkEditShareableEntityResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

