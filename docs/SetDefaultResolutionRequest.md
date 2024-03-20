# SetDefaultResolutionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the new default issue resolution. Must be an existing ID or null. Setting this to null erases the default resolution setting. | 

## Examples

- Prepare the resource
```powershell
$SetDefaultResolutionRequest = Initialize-PSJiraSetDefaultResolutionRequest  -Id null
```

- Convert the resource to JSON
```powershell
$SetDefaultResolutionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

