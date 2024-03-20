# BulkOperationErrorResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ElementErrors** | [**ErrorCollection**](ErrorCollection.md) |  | [optional] 
**FailedElementNumber** | **Int32** |  | [optional] 
**Status** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkOperationErrorResult = Initialize-PSJiraBulkOperationErrorResult  -ElementErrors null `
 -FailedElementNumber null `
 -Status null
```

- Convert the resource to JSON
```powershell
$BulkOperationErrorResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

