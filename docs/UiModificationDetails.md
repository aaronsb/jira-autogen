# UiModificationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Contexts** | [**UiModificationContextDetails[]**](UiModificationContextDetails.md) | List of contexts of the UI modification. The maximum number of contexts is 1000. | [optional] [readonly] 
**VarData** | **String** | The data of the UI modification. The maximum size of the data is 50000 characters. | [optional] [readonly] 
**Description** | **String** | The description of the UI modification. The maximum length is 255 characters. | [optional] [readonly] 
**Id** | **String** | The ID of the UI modification. | [readonly] 
**Name** | **String** | The name of the UI modification. The maximum length is 255 characters. | [readonly] 
**Self** | **String** | The URL of the UI modification. | [readonly] 

## Examples

- Prepare the resource
```powershell
$UiModificationDetails = Initialize-PSJiraUiModificationDetails  -Contexts null `
 -VarData null `
 -Description null `
 -Id null `
 -Name null `
 -Self null
```

- Convert the resource to JSON
```powershell
$UiModificationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

