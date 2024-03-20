# CreateResolutionDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the resolution. | [optional] 
**Name** | **String** | The name of the resolution. Must be unique (case-insensitive). | 

## Examples

- Prepare the resource
```powershell
$CreateResolutionDetails = Initialize-PSJiraCreateResolutionDetails  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$CreateResolutionDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

