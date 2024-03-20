# ScreenTypes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Create** | **Int64** | The ID of the create screen. | [optional] 
**Default** | **Int64** | The ID of the default screen. Required when creating a screen scheme. | [optional] 
**Edit** | **Int64** | The ID of the edit screen. | [optional] 
**View** | **Int64** | The ID of the view screen. | [optional] 

## Examples

- Prepare the resource
```powershell
$ScreenTypes = Initialize-PSJiraScreenTypes  -Create null `
 -Default null `
 -Edit null `
 -View null
```

- Convert the resource to JSON
```powershell
$ScreenTypes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

