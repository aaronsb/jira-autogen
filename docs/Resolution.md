# Resolution
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the issue resolution. | [optional] 
**Id** | **String** | The ID of the issue resolution. | [optional] 
**Name** | **String** | The name of the issue resolution. | [optional] 
**Self** | **String** | The URL of the issue resolution. | [optional] 

## Examples

- Prepare the resource
```powershell
$Resolution = Initialize-PSJiraResolution  -Description null `
 -Id null `
 -Name null `
 -Self null
```

- Convert the resource to JSON
```powershell
$Resolution | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

