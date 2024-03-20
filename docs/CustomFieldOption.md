# CustomFieldOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of these custom field option details. | [optional] [readonly] 
**Value** | **String** | The value of the custom field option. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$CustomFieldOption = Initialize-PSJiraCustomFieldOption  -Self null `
 -Value null
```

- Convert the resource to JSON
```powershell
$CustomFieldOption | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

