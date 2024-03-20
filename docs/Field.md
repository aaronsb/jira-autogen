# Field
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextsCount** | **Int64** | Number of contexts where the field is used. | [optional] 
**Description** | **String** | The description of the field. | [optional] 
**Id** | **String** | The ID of the field. | 
**IsLocked** | **Boolean** | Whether the field is locked. | [optional] 
**IsUnscreenable** | **Boolean** | Whether the field is shown on screen or not. | [optional] 
**Key** | **String** | The key of the field. | [optional] 
**LastUsed** | [**FieldLastUsed**](FieldLastUsed.md) |  | [optional] 
**Name** | **String** | The name of the field. | 
**ProjectsCount** | **Int64** | Number of projects where the field is used. | [optional] 
**Schema** | [**JsonTypeBean**](JsonTypeBean.md) |  | 
**ScreensCount** | **Int64** | Number of screens where the field is used. | [optional] 
**SearcherKey** | **String** | The searcher key of the field. Returned for custom fields. | [optional] 

## Examples

- Prepare the resource
```powershell
$Field = Initialize-PSJiraField  -ContextsCount null `
 -Description null `
 -Id null `
 -IsLocked null `
 -IsUnscreenable null `
 -Key null `
 -LastUsed null `
 -Name null `
 -ProjectsCount null `
 -Schema null `
 -ScreensCount null `
 -SearcherKey null
```

- Convert the resource to JSON
```powershell
$Field | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

