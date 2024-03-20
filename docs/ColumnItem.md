# ColumnItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** | The issue navigator column label. | [optional] 
**Value** | **String** | The issue navigator column value. | [optional] 

## Examples

- Prepare the resource
```powershell
$ColumnItem = Initialize-PSJiraColumnItem  -Label null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ColumnItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

