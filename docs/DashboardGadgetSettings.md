# DashboardGadgetSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Color** | **String** | The color of the gadget. Should be one of &#x60;blue&#x60;, &#x60;red&#x60;, &#x60;yellow&#x60;, &#x60;green&#x60;, &#x60;cyan&#x60;, &#x60;purple&#x60;, &#x60;gray&#x60;, or &#x60;white&#x60;. | [optional] 
**IgnoreUriAndModuleKeyValidation** | **Boolean** | Whether to ignore the validation of module key and URI. For example, when a gadget is created that is a part of an application that isn&#39;t installed. | [optional] 
**ModuleKey** | **String** | The module key of the gadget type. Can&#39;t be provided with &#x60;uri&#x60;. | [optional] 
**Position** | [**DashboardGadgetPosition**](DashboardGadgetPosition.md) | The position of the gadget. When the gadget is placed into the position, other gadgets in the same column are moved down to accommodate it. | [optional] 
**Title** | **String** | The title of the gadget. | [optional] 
**Uri** | **String** | The URI of the gadget type. Can&#39;t be provided with &#x60;moduleKey&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$DashboardGadgetSettings = Initialize-PSJiraDashboardGadgetSettings  -Color null `
 -IgnoreUriAndModuleKeyValidation null `
 -ModuleKey null `
 -Position null `
 -Title null `
 -Uri null
```

- Convert the resource to JSON
```powershell
$DashboardGadgetSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

