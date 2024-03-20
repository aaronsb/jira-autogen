# DateRangeFilterRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DateAfter** | **String** | List issues archived after a specified date, passed in the YYYY-MM-DD format. | 
**DateBefore** | **String** | List issues archived before a specified date provided in the YYYY-MM-DD format. | 

## Examples

- Prepare the resource
```powershell
$DateRangeFilterRequest = Initialize-PSJiraDateRangeFilterRequest  -DateAfter null `
 -DateBefore null
```

- Convert the resource to JSON
```powershell
$DateRangeFilterRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

