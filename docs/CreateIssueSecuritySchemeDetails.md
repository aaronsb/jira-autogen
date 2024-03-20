# CreateIssueSecuritySchemeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the issue security scheme. | [optional] 
**Levels** | [**SecuritySchemeLevelBean[]**](SecuritySchemeLevelBean.md) | The list of scheme levels which should be added to the security scheme. | [optional] 
**Name** | **String** | The name of the issue security scheme. Must be unique (case-insensitive). | 

## Examples

- Prepare the resource
```powershell
$CreateIssueSecuritySchemeDetails = Initialize-PSJiraCreateIssueSecuritySchemeDetails  -Description null `
 -Levels null `
 -Name null
```

- Convert the resource to JSON
```powershell
$CreateIssueSecuritySchemeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

