# UpdateUiModificationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Contexts** | [**UiModificationContextDetails[]**](UiModificationContextDetails.md) | List of contexts of the UI modification. The maximum number of contexts is 1000. If provided, replaces all existing contexts. | [optional] 
**VarData** | **String** | The data of the UI modification. The maximum size of the data is 50000 characters. | [optional] 
**Description** | **String** | The description of the UI modification. The maximum length is 255 characters. | [optional] 
**Name** | **String** | The name of the UI modification. The maximum length is 255 characters. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateUiModificationDetails = Initialize-PSJiraUpdateUiModificationDetails  -Contexts null `
 -VarData null `
 -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$UpdateUiModificationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

