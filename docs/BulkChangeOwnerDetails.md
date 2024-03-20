# BulkChangeOwnerDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutofixName** | **Boolean** | Whether the name is fixed automatically if it&#39;s duplicated after changing owner. | 
**NewOwner** | **String** | The account id of the new owner. | 

## Examples

- Prepare the resource
```powershell
$BulkChangeOwnerDetails = Initialize-PSJiraBulkChangeOwnerDetails  -AutofixName null `
 -NewOwner null
```

- Convert the resource to JSON
```powershell
$BulkChangeOwnerDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

