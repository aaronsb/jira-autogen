# UiModificationIdentifiers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the UI modification. | [readonly] 
**Self** | **String** | The URL of the UI modification. | [readonly] 

## Examples

- Prepare the resource
```powershell
$UiModificationIdentifiers = Initialize-PSJiraUiModificationIdentifiers  -Id null `
 -Self null
```

- Convert the resource to JSON
```powershell
$UiModificationIdentifiers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

