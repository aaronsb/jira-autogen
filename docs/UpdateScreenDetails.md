# UpdateScreenDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the screen. The maximum length is 255 characters. | [optional] 
**Name** | **String** | The name of the screen. The name must be unique. The maximum length is 255 characters. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateScreenDetails = Initialize-PSJiraUpdateScreenDetails  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$UpdateScreenDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

