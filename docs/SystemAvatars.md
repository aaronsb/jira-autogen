# SystemAvatars
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**System** | [**Avatar[]**](Avatar.md) | A list of avatar details. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SystemAvatars = Initialize-PSJiraSystemAvatars  -System null
```

- Convert the resource to JSON
```powershell
$SystemAvatars | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

