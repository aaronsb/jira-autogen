# JqlQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderBy** | [**JqlQueryOrderByClause**](JqlQueryOrderByClause.md) |  | [optional] 
**VarWhere** | [**JqlQueryClause**](JqlQueryClause.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JqlQuery = Initialize-PSJiraJqlQuery  -OrderBy null `
 -VarWhere null
```

- Convert the resource to JSON
```powershell
$JqlQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

