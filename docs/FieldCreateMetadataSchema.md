# FieldCreateMetadataSchema
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configuration** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) | If the field is a custom field, the configuration of the field. | [optional] [readonly] 
**Custom** | **String** | If the field is a custom field, the URI of the field. | [optional] [readonly] 
**CustomId** | **Int64** | If the field is a custom field, the custom ID of the field. | [optional] [readonly] 
**Items** | **String** | When the data type is an array, the name of the field items within the array. | [optional] [readonly] 
**System** | **String** | If the field is a system field, the name of the field. | [optional] [readonly] 
**Type** | **String** | The data type of the field. | [readonly] 

## Examples

- Prepare the resource
```powershell
$FieldCreateMetadataSchema = Initialize-PSJiraFieldCreateMetadataSchema  -Configuration null `
 -Custom null `
 -CustomId null `
 -Items null `
 -System null `
 -Type null
```

- Convert the resource to JSON
```powershell
$FieldCreateMetadataSchema | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

