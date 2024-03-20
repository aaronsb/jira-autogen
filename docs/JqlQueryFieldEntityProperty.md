# JqlQueryFieldEntityProperty
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Entity** | **String** | The object on which the property is set. | 
**Key** | **String** | The key of the property. | 
**Path** | **String** | The path in the property value to query. | 
**Type** | **String** | The type of the property value extraction. Not available if the extraction for the property is not registered on the instance with the [Entity property](https://developer.atlassian.com/cloud/jira/platform/modules/entity-property/) module. | [optional] 

## Examples

- Prepare the resource
```powershell
$JqlQueryFieldEntityProperty = Initialize-PSJiraJqlQueryFieldEntityProperty  -Entity issue `
 -Key stats `
 -Path comments.count `
 -Type number
```

- Convert the resource to JSON
```powershell
$JqlQueryFieldEntityProperty | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

