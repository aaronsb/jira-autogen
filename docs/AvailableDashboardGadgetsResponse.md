# AvailableDashboardGadgetsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Gadgets** | [**AvailableDashboardGadget[]**](AvailableDashboardGadget.md) | The list of available gadgets. | [readonly] 

## Examples

- Prepare the resource
```powershell
$AvailableDashboardGadgetsResponse = Initialize-PSJiraAvailableDashboardGadgetsResponse  -Gadgets null
```

- Convert the resource to JSON
```powershell
$AvailableDashboardGadgetsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

