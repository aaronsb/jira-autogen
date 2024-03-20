# CustomFieldConfigurations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configurations** | [**ContextualConfiguration[]**](ContextualConfiguration.md) | The list of custom field configuration details. | 

## Examples

- Prepare the resource
```powershell
$CustomFieldConfigurations = Initialize-PSJiraCustomFieldConfigurations  -Configurations null
```

- Convert the resource to JSON
```powershell
$CustomFieldConfigurations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

