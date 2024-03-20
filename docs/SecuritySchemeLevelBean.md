# SecuritySchemeLevelBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the issue security scheme level. | [optional] 
**IsDefault** | **Boolean** | Specifies whether the level is the default level. False by default. | [optional] 
**Members** | [**SecuritySchemeLevelMemberBean[]**](SecuritySchemeLevelMemberBean.md) | The list of level members which should be added to the issue security scheme level. | [optional] 
**Name** | **String** | The name of the issue security scheme level. Must be unique. | 

## Examples

- Prepare the resource
```powershell
$SecuritySchemeLevelBean = Initialize-PSJiraSecuritySchemeLevelBean  -Description null `
 -IsDefault null `
 -Members null `
 -Name null
```

- Convert the resource to JSON
```powershell
$SecuritySchemeLevelBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

