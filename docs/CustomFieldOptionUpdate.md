# CustomFieldOptionUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Disabled** | **Boolean** | Whether the option is disabled. | [optional] 
**Id** | **String** | The ID of the custom field option. | 
**Value** | **String** | The value of the custom field option. | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomFieldOptionUpdate = Initialize-PSJiraCustomFieldOptionUpdate  -Disabled null `
 -Id null `
 -Value null
```

- Convert the resource to JSON
```powershell
$CustomFieldOptionUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

