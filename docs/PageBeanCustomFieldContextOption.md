# PageBeanCustomFieldContextOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsLast** | **Boolean** | Whether this is the last page. | [optional] [readonly] 
**MaxResults** | **Int32** | The maximum number of items that could be returned. | [optional] [readonly] 
**NextPage** | **String** | If there is another page of results, the URL of the next page. | [optional] [readonly] 
**Self** | **String** | The URL of the page. | [optional] [readonly] 
**StartAt** | **Int64** | The index of the first item returned. | [optional] [readonly] 
**Total** | **Int64** | The number of items returned. | [optional] [readonly] 
**Values** | [**CustomFieldContextOption[]**](CustomFieldContextOption.md) | The list of items. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PageBeanCustomFieldContextOption = Initialize-PSJiraPageBeanCustomFieldContextOption  -IsLast null `
 -MaxResults null `
 -NextPage null `
 -Self null `
 -StartAt null `
 -Total null `
 -Values null
```

- Convert the resource to JSON
```powershell
$PageBeanCustomFieldContextOption | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

