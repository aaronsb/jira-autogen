# UserContextVariable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The account ID of the user. | 
**Type** | **String** | Type of custom context variable. | 

## Examples

- Prepare the resource
```powershell
$UserContextVariable = Initialize-PSJiraUserContextVariable  -AccountId null `
 -Type null
```

- Convert the resource to JSON
```powershell
$UserContextVariable | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

