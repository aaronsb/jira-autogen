# UpdateIssueSecurityLevelDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the issue security scheme level. | [optional] 
**Name** | **String** | The name of the issue security scheme level. Must be unique. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateIssueSecurityLevelDetails = Initialize-PSJiraUpdateIssueSecurityLevelDetails  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$UpdateIssueSecurityLevelDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

