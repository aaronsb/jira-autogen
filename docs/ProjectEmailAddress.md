# ProjectEmailAddress
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** | The email address. | [optional] 
**EmailAddressStatus** | **String[]** | When using a custom domain, the status of the email address. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectEmailAddress = Initialize-PSJiraProjectEmailAddress  -EmailAddress null `
 -EmailAddressStatus null
```

- Convert the resource to JSON
```powershell
$ProjectEmailAddress | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

