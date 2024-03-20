# UserMigrationBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** |  | [optional] 
**Key** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserMigrationBean = Initialize-PSJiraUserMigrationBean  -AccountId null `
 -Key null `
 -Username null
```

- Convert the resource to JSON
```powershell
$UserMigrationBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

