# GroupLabel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **String** | The group label name. | [optional] 
**Title** | **String** | The title of the group label. | [optional] 
**Type** | **String** | The type of the group label. | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupLabel = Initialize-PSJiraGroupLabel  -Text null `
 -Title null `
 -Type null
```

- Convert the resource to JSON
```powershell
$GroupLabel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

