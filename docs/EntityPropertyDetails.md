# EntityPropertyDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityId** | **Decimal** | The entity property ID. | 
**Key** | **String** | The entity property key. | 
**Value** | **String** | The new value of the entity property. | 

## Examples

- Prepare the resource
```powershell
$EntityPropertyDetails = Initialize-PSJiraEntityPropertyDetails  -EntityId 123 `
 -Key mykey `
 -Value newValue
```

- Convert the resource to JSON
```powershell
$EntityPropertyDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

