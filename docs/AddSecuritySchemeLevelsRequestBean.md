# AddSecuritySchemeLevelsRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Levels** | [**SecuritySchemeLevelBean[]**](SecuritySchemeLevelBean.md) | The list of scheme levels which should be added to the security scheme. | [optional] 

## Examples

- Prepare the resource
```powershell
$AddSecuritySchemeLevelsRequestBean = Initialize-PSJiraAddSecuritySchemeLevelsRequestBean  -Levels null
```

- Convert the resource to JSON
```powershell
$AddSecuritySchemeLevelsRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

