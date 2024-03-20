# SetDefaultPriorityRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the new default issue priority. Must be an existing ID or null. Setting this to null erases the default priority setting. | 

## Examples

- Prepare the resource
```powershell
$SetDefaultPriorityRequest = Initialize-PSJiraSetDefaultPriorityRequest  -Id null
```

- Convert the resource to JSON
```powershell
$SetDefaultPriorityRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

