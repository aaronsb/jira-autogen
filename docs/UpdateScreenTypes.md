# UpdateScreenTypes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Create** | **String** | The ID of the create screen. To remove the screen association, pass a null. | [optional] 
**Default** | **String** | The ID of the default screen. When specified, must include a screen ID as a default screen is required. | [optional] 
**Edit** | **String** | The ID of the edit screen. To remove the screen association, pass a null. | [optional] 
**View** | **String** | The ID of the view screen. To remove the screen association, pass a null. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateScreenTypes = Initialize-PSJiraUpdateScreenTypes  -Create null `
 -Default null `
 -Edit null `
 -View null
```

- Convert the resource to JSON
```powershell
$UpdateScreenTypes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

