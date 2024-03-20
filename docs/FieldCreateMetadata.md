# FieldCreateMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedValues** | [**AnyType[]**](AnyType.md) | The list of values allowed in the field. | [optional] [readonly] 
**AutoCompleteUrl** | **String** | The URL that can be used to automatically complete the field. | [optional] [readonly] 
**Configuration** | [**System.Collections.Hashtable**](AnyType.md) | The configuration properties. | [optional] [readonly] 
**DefaultValue** | [**AnyType**](.md) | The default value of the field. | [optional] [readonly] 
**FieldId** | **String** | The field id. | [readonly] 
**HasDefaultValue** | **Boolean** | Whether the field has a default value. | [optional] [readonly] 
**Key** | **String** | The key of the field. | [readonly] 
**Name** | **String** | The name of the field. | [readonly] 
**Operations** | **String[]** | The list of operations that can be performed on the field. | [readonly] 
**Required** | **Boolean** | Whether the field is required. | [readonly] 
**Schema** | [**FieldCreateMetadataSchema**](FieldCreateMetadataSchema.md) |  | 

## Examples

- Prepare the resource
```powershell
$FieldCreateMetadata = Initialize-PSJiraFieldCreateMetadata  -AllowedValues null `
 -AutoCompleteUrl null `
 -Configuration null `
 -DefaultValue null `
 -FieldId null `
 -HasDefaultValue null `
 -Key null `
 -Name null `
 -Operations null `
 -Required null `
 -Schema null
```

- Convert the resource to JSON
```powershell
$FieldCreateMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

