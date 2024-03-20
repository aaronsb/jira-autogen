# SecurityScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultSecurityLevelId** | **Int64** | The ID of the default security level. | [optional] [readonly] 
**Description** | **String** | The description of the issue security scheme. | [optional] [readonly] 
**Id** | **Int64** | The ID of the issue security scheme. | [optional] [readonly] 
**Levels** | [**SecurityLevel[]**](SecurityLevel.md) |  | [optional] 
**Name** | **String** | The name of the issue security scheme. | [optional] [readonly] 
**Self** | **String** | The URL of the issue security scheme. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SecurityScheme = Initialize-PSJiraSecurityScheme  -DefaultSecurityLevelId null `
 -Description null `
 -Id null `
 -Levels null `
 -Name null `
 -Self null
```

- Convert the resource to JSON
```powershell
$SecurityScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

