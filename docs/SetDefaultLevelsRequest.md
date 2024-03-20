# SetDefaultLevelsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultValues** | [**DefaultLevelValue[]**](DefaultLevelValue.md) | List of objects with issue security scheme ID and new default level ID. | 

## Examples

- Prepare the resource
```powershell
$SetDefaultLevelsRequest = Initialize-PSJiraSetDefaultLevelsRequest  -DefaultValues null
```

- Convert the resource to JSON
```powershell
$SetDefaultLevelsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

