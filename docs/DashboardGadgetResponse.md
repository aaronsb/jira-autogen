# DashboardGadgetResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Gadgets** | [**DashboardGadget[]**](DashboardGadget.md) | The list of gadgets. | [readonly] 

## Examples

- Prepare the resource
```powershell
$DashboardGadgetResponse = Initialize-PSJiraDashboardGadgetResponse  -Gadgets null
```

- Convert the resource to JSON
```powershell
$DashboardGadgetResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

