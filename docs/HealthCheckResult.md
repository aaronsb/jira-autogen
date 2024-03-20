# HealthCheckResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the Jira health check item. | [optional] 
**Name** | **String** | The name of the Jira health check item. | [optional] 
**Passed** | **Boolean** | Whether the Jira health check item passed or failed. | [optional] 

## Examples

- Prepare the resource
```powershell
$HealthCheckResult = Initialize-PSJiraHealthCheckResult  -Description null `
 -Name null `
 -Passed null
```

- Convert the resource to JSON
```powershell
$HealthCheckResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

