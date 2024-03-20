# ScreenableField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the screen tab field. | [optional] [readonly] 
**Name** | **String** | The name of the screen tab field. Required on create and update. The maximum length is 255 characters. | [optional] 

## Examples

- Prepare the resource
```powershell
$ScreenableField = Initialize-PSJiraScreenableField  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ScreenableField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

