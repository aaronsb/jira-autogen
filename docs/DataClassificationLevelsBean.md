# DataClassificationLevelsBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Classifications** | [**DataClassificationTagBean[]**](DataClassificationTagBean.md) | The data classifications. | [optional] 

## Examples

- Prepare the resource
```powershell
$DataClassificationLevelsBean = Initialize-PSJiraDataClassificationLevelsBean  -Classifications null
```

- Convert the resource to JSON
```powershell
$DataClassificationLevelsBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

