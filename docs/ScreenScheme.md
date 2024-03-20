# ScreenScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the screen scheme. | [optional] 
**Id** | **Int64** | The ID of the screen scheme. | [optional] 
**IssueTypeScreenSchemes** | [**PageBeanIssueTypeScreenScheme**](PageBeanIssueTypeScreenScheme.md) | Details of the issue type screen schemes associated with the screen scheme. | [optional] 
**Name** | **String** | The name of the screen scheme. | [optional] 
**Screens** | [**ScreenTypes**](ScreenTypes.md) | The IDs of the screens for the screen types of the screen scheme. | [optional] 

## Examples

- Prepare the resource
```powershell
$ScreenScheme = Initialize-PSJiraScreenScheme  -Description null `
 -Id null `
 -IssueTypeScreenSchemes null `
 -Name null `
 -Screens null
```

- Convert the resource to JSON
```powershell
$ScreenScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

