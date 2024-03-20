# Screen
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the screen. | [optional] [readonly] 
**Id** | **Int64** | The ID of the screen. | [optional] [readonly] 
**Name** | **String** | The name of the screen. | [optional] [readonly] 
**Scope** | [**Scope**](Scope.md) | The scope of the screen. | [optional] 

## Examples

- Prepare the resource
```powershell
$Screen = Initialize-PSJiraScreen  -Description null `
 -Id null `
 -Name null `
 -Scope null
```

- Convert the resource to JSON
```powershell
$Screen | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

