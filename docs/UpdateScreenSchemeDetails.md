# UpdateScreenSchemeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the screen scheme. The maximum length is 255 characters. | [optional] 
**Name** | **String** | The name of the screen scheme. The name must be unique. The maximum length is 255 characters. | [optional] 
**Screens** | [**UpdateScreenTypes**](UpdateScreenTypes.md) | The IDs of the screens for the screen types of the screen scheme. Only screens used in classic projects are accepted. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateScreenSchemeDetails = Initialize-PSJiraUpdateScreenSchemeDetails  -Description null `
 -Name null `
 -Screens null
```

- Convert the resource to JSON
```powershell
$UpdateScreenSchemeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

