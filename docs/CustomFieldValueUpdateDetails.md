# CustomFieldValueUpdateDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Updates** | [**CustomFieldValueUpdate[]**](CustomFieldValueUpdate.md) | The list of custom field update details. | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomFieldValueUpdateDetails = Initialize-PSJiraCustomFieldValueUpdateDetails  -Updates null
```

- Convert the resource to JSON
```powershell
$CustomFieldValueUpdateDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

