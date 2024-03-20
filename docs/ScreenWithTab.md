# ScreenWithTab
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the screen. | [optional] [readonly] 
**Id** | **Int64** | The ID of the screen. | [optional] [readonly] 
**Name** | **String** | The name of the screen. | [optional] [readonly] 
**Scope** | [**Scope**](Scope.md) | The scope of the screen. | [optional] 
**Tab** | [**ScreenableTab**](ScreenableTab.md) | The tab for the screen. | [optional] 

## Examples

- Prepare the resource
```powershell
$ScreenWithTab = Initialize-PSJiraScreenWithTab  -Description null `
 -Id null `
 -Name null `
 -Scope null `
 -Tab null
```

- Convert the resource to JSON
```powershell
$ScreenWithTab | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

