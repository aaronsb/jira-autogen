# FieldChangedClause
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Field** | [**JqlQueryField**](JqlQueryField.md) |  | 
**Operator** | **String** | The operator applied to the field. | 
**Predicates** | [**JqlQueryClauseTimePredicate[]**](JqlQueryClauseTimePredicate.md) | The list of time predicates. | 

## Examples

- Prepare the resource
```powershell
$FieldChangedClause = Initialize-PSJiraFieldChangedClause  -Field null `
 -Operator null `
 -Predicates null
```

- Convert the resource to JSON
```powershell
$FieldChangedClause | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

