# UnrestrictedUserEmail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The accountId of the user | [optional] 
**Email** | **String** | The email of the user | [optional] 

## Examples

- Prepare the resource
```powershell
$UnrestrictedUserEmail = Initialize-PSJiraUnrestrictedUserEmail  -AccountId null `
 -Email null
```

- Convert the resource to JSON
```powershell
$UnrestrictedUserEmail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

