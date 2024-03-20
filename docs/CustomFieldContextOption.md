# CustomFieldContextOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Disabled** | **Boolean** | Whether the option is disabled. | 
**Id** | **String** | The ID of the custom field option. | 
**OptionId** | **String** | For cascading options, the ID of the custom field option containing the cascading option. | [optional] 
**Value** | **String** | The value of the custom field option. | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextOption = Initialize-PSJiraCustomFieldContextOption  -Disabled null `
 -Id null `
 -OptionId null `
 -Value null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextOption | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

