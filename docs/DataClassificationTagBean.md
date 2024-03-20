# DataClassificationTagBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Color** | **String** | The color of the data classification object. | [optional] 
**Description** | **String** | The description of the data classification object. | [optional] 
**Guideline** | **String** | The guideline of the data classification object. | [optional] 
**Id** | **String** | The ID of the data classification object. | 
**Name** | **String** | The name of the data classification object. | [optional] 
**Rank** | **Int32** | The rank of the data classification object. | [optional] 
**Status** | **String** | The status of the data classification object. | 

## Examples

- Prepare the resource
```powershell
$DataClassificationTagBean = Initialize-PSJiraDataClassificationTagBean  -Color null `
 -Description null `
 -Guideline null `
 -Id null `
 -Name null `
 -Rank null `
 -Status null
```

- Convert the resource to JSON
```powershell
$DataClassificationTagBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

