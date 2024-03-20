# BulkCustomFieldOptionCreateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Options** | [**CustomFieldOptionCreate[]**](CustomFieldOptionCreate.md) | Details of options to create. | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkCustomFieldOptionCreateRequest = Initialize-PSJiraBulkCustomFieldOptionCreateRequest  -Options null
```

- Convert the resource to JSON
```powershell
$BulkCustomFieldOptionCreateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

