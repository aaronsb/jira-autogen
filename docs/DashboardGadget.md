# DashboardGadget
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Color** | **String** | The color of the gadget. Should be one of &#x60;blue&#x60;, &#x60;red&#x60;, &#x60;yellow&#x60;, &#x60;green&#x60;, &#x60;cyan&#x60;, &#x60;purple&#x60;, &#x60;gray&#x60;, or &#x60;white&#x60;. | [readonly] 
**Id** | **Int64** | The ID of the gadget instance. | [readonly] 
**ModuleKey** | **String** | The module key of the gadget type. | [optional] [readonly] 
**Position** | [**DashboardGadgetPosition**](DashboardGadgetPosition.md) |  | 
**Title** | **String** | The title of the gadget. | [readonly] 
**Uri** | **String** | The URI of the gadget type. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$DashboardGadget = Initialize-PSJiraDashboardGadget  -Color null `
 -Id null `
 -ModuleKey null `
 -Position null `
 -Title null `
 -Uri null
```

- Convert the resource to JSON
```powershell
$DashboardGadget | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

