# CustomFieldContextDefaultValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CascadingOptionId** | **String** | The ID of the default cascading option. | [optional] 
**ContextId** | **String** | The ID of the context. | 
**OptionId** | **String** | The ID of the default option. | 
**Type** | **String** |  | 
**OptionIds** | **String[]** | The list of IDs of the default options. | 
**AccountId** | **String** | The ID of the default user. | 
**UserFilter** | [**UserFilter**](UserFilter.md) |  | 
**AccountIds** | **String[]** | The IDs of the default users. | 
**GroupId** | **String** | The ID of the the default group. | 
**GroupIds** | **String[]** | The IDs of the default groups. | 
**Date** | **String** | The default date in ISO format. Ignored if &#x60;useCurrent&#x60; is true. | [optional] 
**UseCurrent** | **Boolean** | Whether to use the current date. | [optional] [default to $false]
**DateTime** | **String** | The default date-time in ISO format. Ignored if &#x60;useCurrent&#x60; is true. | [optional] 
**Url** | **String** | The default URL. | 
**ProjectId** | **String** | The ID of the default project. | 
**Number** | **Double** | The default floating-point number. | 
**Labels** | **String[]** | The default labels value. | 
**Text** | **String** | The default text. The maximum length is 254 characters. | [optional] 
**VersionId** | **String** | The ID of the default version. | 
**VersionOrder** | **String** | The order the pickable versions are displayed in. If not provided, the released-first order is used. Available version orders are &#x60;&quot;&quot;releasedFirst&quot;&quot;&#x60; and &#x60;&quot;&quot;unreleasedFirst&quot;&quot;&#x60;. | [optional] 
**VersionIds** | **String[]** | The IDs of the default versions. | 
**Values** | **String[]** | List of string values. The maximum length for a value is 254 characters. | [optional] 
**Object** | [**SystemCollectionsHashtable**](.md) | The default JSON object. | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValue = Initialize-PSJiraCustomFieldContextDefaultValue  -CascadingOptionId null `
 -ContextId null `
 -OptionId null `
 -Type null `
 -OptionIds null `
 -AccountId null `
 -UserFilter null `
 -AccountIds null `
 -GroupId null `
 -GroupIds null `
 -Date null `
 -UseCurrent null `
 -DateTime null `
 -Url null `
 -ProjectId null `
 -Number null `
 -Labels null `
 -Text null `
 -VersionId null `
 -VersionOrder null `
 -VersionIds null `
 -Values null `
 -Object null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

