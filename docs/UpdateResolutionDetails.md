# UpdateResolutionDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the resolution. | [optional] 
**Name** | **String** | The name of the resolution. Must be unique. | 

## Examples

- Prepare the resource
```powershell
$UpdateResolutionDetails = Initialize-PSJiraUpdateResolutionDetails  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$UpdateResolutionDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

