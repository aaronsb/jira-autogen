# BulkCustomFieldOptionUpdateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Options** | [**CustomFieldOptionUpdate[]**](CustomFieldOptionUpdate.md) | Details of the options to update. | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkCustomFieldOptionUpdateRequest = Initialize-PSJiraBulkCustomFieldOptionUpdateRequest  -Options null
```

- Convert the resource to JSON
```powershell
$BulkCustomFieldOptionUpdateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

