# AvailableDashboardGadget
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ModuleKey** | **String** | The module key of the gadget type. | [optional] [readonly] 
**Title** | **String** | The title of the gadget. | [readonly] 
**Uri** | **String** | The URI of the gadget type. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AvailableDashboardGadget = Initialize-PSJiraAvailableDashboardGadget  -ModuleKey null `
 -Title null `
 -Uri null
```

- Convert the resource to JSON
```powershell
$AvailableDashboardGadget | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

