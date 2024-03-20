# Avatars
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Custom** | [**Avatar[]**](Avatar.md) | Custom avatars list. | [optional] [readonly] 
**System** | [**Avatar[]**](Avatar.md) | System avatars list. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Avatars = Initialize-PSJiraAvatars  -Custom null `
 -System null
```

- Convert the resource to JSON
```powershell
$Avatars | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

