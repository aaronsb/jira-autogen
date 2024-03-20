# JqlQueryToSanitize
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] 
**Query** | **String** | The query to sanitize. | 

## Examples

- Prepare the resource
```powershell
$JqlQueryToSanitize = Initialize-PSJiraJqlQueryToSanitize  -AccountId null `
 -Query null
```

- Convert the resource to JSON
```powershell
$JqlQueryToSanitize | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

