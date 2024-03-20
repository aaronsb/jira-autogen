# LicensedApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the application. | [readonly] 
**Plan** | **String** | The licensing plan. | [readonly] 

## Examples

- Prepare the resource
```powershell
$LicensedApplication = Initialize-PSJiraLicensedApplication  -Id null `
 -Plan null
```

- Convert the resource to JSON
```powershell
$LicensedApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

