# JqlQueryField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EncodedName** | **String** | The encoded name of the field, which can be used directly in a JQL query. | [optional] 
**Name** | **String** | The name of the field. | 
**Property** | [**JqlQueryFieldEntityProperty[]**](JqlQueryFieldEntityProperty.md) | When the field refers to a value in an entity property, details of the entity property value. | [optional] 

## Examples

- Prepare the resource
```powershell
$JqlQueryField = Initialize-PSJiraJqlQueryField  -EncodedName null `
 -Name null `
 -Property null
```

- Convert the resource to JSON
```powershell
$JqlQueryField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

