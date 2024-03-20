# JqlQueryOrderByClauseElement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Direction** | **String** | The direction in which to order the results. | [optional] 
**Field** | [**JqlQueryField**](JqlQueryField.md) |  | 

## Examples

- Prepare the resource
```powershell
$JqlQueryOrderByClauseElement = Initialize-PSJiraJqlQueryOrderByClauseElement  -Direction null `
 -Field null
```

- Convert the resource to JSON
```powershell
$JqlQueryOrderByClauseElement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

