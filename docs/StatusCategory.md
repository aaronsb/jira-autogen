# StatusCategory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ColorName** | **String** | The name of the color used to represent the status category. | [optional] [readonly] 
**Id** | **Int64** | The ID of the status category. | [optional] [readonly] 
**Key** | **String** | The key of the status category. | [optional] [readonly] 
**Name** | **String** | The name of the status category. | [optional] [readonly] 
**Self** | **String** | The URL of the status category. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$StatusCategory = Initialize-PSJiraStatusCategory  -ColorName null `
 -Id null `
 -Key null `
 -Name null `
 -Self null
```

- Convert the resource to JSON
```powershell
$StatusCategory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

