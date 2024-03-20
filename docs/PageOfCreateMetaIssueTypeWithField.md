# PageOfCreateMetaIssueTypeWithField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Fields** | [**FieldCreateMetadata[]**](FieldCreateMetadata.md) | The collection of FieldCreateMetaBeans. | [optional] [readonly] 
**MaxResults** | **Int32** | The maximum number of items to return per page. | [optional] [readonly] 
**Results** | [**FieldCreateMetadata[]**](FieldCreateMetadata.md) |  | [optional] 
**StartAt** | **Int64** | The index of the first item returned. | [optional] [readonly] 
**Total** | **Int64** | The total number of items in all pages. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PageOfCreateMetaIssueTypeWithField = Initialize-PSJiraPageOfCreateMetaIssueTypeWithField  -Fields null `
 -MaxResults null `
 -Results null `
 -StartAt null `
 -Total null
```

- Convert the resource to JSON
```powershell
$PageOfCreateMetaIssueTypeWithField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

