# UpdateIssueSecuritySchemeRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the security scheme scheme. | [optional] 
**Name** | **String** | The name of the security scheme scheme. Must be unique. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateIssueSecuritySchemeRequestBean = Initialize-PSJiraUpdateIssueSecuritySchemeRequestBean  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$UpdateIssueSecuritySchemeRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

