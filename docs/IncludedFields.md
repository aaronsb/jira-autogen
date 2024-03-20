# IncludedFields
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActuallyIncluded** | **String[]** |  | [optional] 
**Excluded** | **String[]** |  | [optional] 
**Included** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IncludedFields = Initialize-PSJiraIncludedFields  -ActuallyIncluded null `
 -Excluded null `
 -Included null
```

- Convert the resource to JSON
```powershell
$IncludedFields | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

