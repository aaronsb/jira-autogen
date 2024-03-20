# EntityProperty
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The key of the property. Required on create and update. | [optional] 
**Value** | [**AnyType**](.md) | The value of the property. Required on create and update. | [optional] 

## Examples

- Prepare the resource
```powershell
$EntityProperty = Initialize-PSJiraEntityProperty  -Key null `
 -Value null
```

- Convert the resource to JSON
```powershell
$EntityProperty | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

