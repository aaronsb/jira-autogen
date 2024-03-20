# PageOfCreateMetaIssueTypes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreateMetaIssueType** | [**IssueTypeIssueCreateMetadata[]**](IssueTypeIssueCreateMetadata.md) |  | [optional] 
**IssueTypes** | [**IssueTypeIssueCreateMetadata[]**](IssueTypeIssueCreateMetadata.md) | The list of CreateMetaIssueType. | [optional] [readonly] 
**MaxResults** | **Int32** | The maximum number of items to return per page. | [optional] [readonly] 
**StartAt** | **Int64** | The index of the first item returned. | [optional] [readonly] 
**Total** | **Int64** | The total number of items in all pages. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PageOfCreateMetaIssueTypes = Initialize-PSJiraPageOfCreateMetaIssueTypes  -CreateMetaIssueType null `
 -IssueTypes null `
 -MaxResults null `
 -StartAt null `
 -Total null
```

- Convert the resource to JSON
```powershell
$PageOfCreateMetaIssueTypes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

