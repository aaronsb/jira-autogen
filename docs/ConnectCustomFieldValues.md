# ConnectCustomFieldValues
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UpdateValueList** | [**ConnectCustomFieldValue[]**](ConnectCustomFieldValue.md) | The list of custom field update details. | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectCustomFieldValues = Initialize-PSJiraConnectCustomFieldValues  -UpdateValueList null
```

- Convert the resource to JSON
```powershell
$ConnectCustomFieldValues | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

