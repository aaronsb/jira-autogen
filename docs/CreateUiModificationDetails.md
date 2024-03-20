# CreateUiModificationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Contexts** | [**UiModificationContextDetails[]**](UiModificationContextDetails.md) | List of contexts of the UI modification. The maximum number of contexts is 1000. | [optional] 
**VarData** | **String** | The data of the UI modification. The maximum size of the data is 50000 characters. | [optional] 
**Description** | **String** | The description of the UI modification. The maximum length is 255 characters. | [optional] 
**Name** | **String** | The name of the UI modification. The maximum length is 255 characters. | 

## Examples

- Prepare the resource
```powershell
$CreateUiModificationDetails = Initialize-PSJiraCreateUiModificationDetails  -Contexts null `
 -VarData null `
 -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$CreateUiModificationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

