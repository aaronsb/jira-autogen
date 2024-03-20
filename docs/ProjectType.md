# ProjectType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Color** | **String** | The color of the project type. | [optional] [readonly] 
**DescriptionI18nKey** | **String** | The key of the project type&#39;s description. | [optional] [readonly] 
**FormattedKey** | **String** | The formatted key of the project type. | [optional] [readonly] 
**Icon** | **String** | The icon of the project type. | [optional] [readonly] 
**Key** | **String** | The key of the project type. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectType = Initialize-PSJiraProjectType  -Color null `
 -DescriptionI18nKey null `
 -FormattedKey null `
 -Icon null `
 -Key null
```

- Convert the resource to JSON
```powershell
$ProjectType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

