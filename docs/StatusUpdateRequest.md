# StatusUpdateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Statuses** | [**StatusUpdate[]**](StatusUpdate.md) | The list of statuses that will be updated. | 

## Examples

- Prepare the resource
```powershell
$StatusUpdateRequest = Initialize-PSJiraStatusUpdateRequest  -Statuses null
```

- Convert the resource to JSON
```powershell
$StatusUpdateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

