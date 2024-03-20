# CustomFieldReplacement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomFieldId** | **Int64** | The ID of the custom field in which to replace the version number. | [optional] 
**MoveTo** | **Int64** | The version number to use as a replacement for the deleted version. | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomFieldReplacement = Initialize-PSJiraCustomFieldReplacement  -CustomFieldId null `
 -MoveTo null
```

- Convert the resource to JSON
```powershell
$CustomFieldReplacement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

