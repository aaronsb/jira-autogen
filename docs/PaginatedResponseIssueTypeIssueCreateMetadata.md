# PaginatedResponseIssueTypeIssueCreateMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxResults** | **Int32** |  | [optional] 
**Results** | [**IssueTypeIssueCreateMetadata[]**](IssueTypeIssueCreateMetadata.md) |  | [optional] 
**StartAt** | **Int64** |  | [optional] 
**Total** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PaginatedResponseIssueTypeIssueCreateMetadata = Initialize-PSJiraPaginatedResponseIssueTypeIssueCreateMetadata  -MaxResults null `
 -Results null `
 -StartAt null `
 -Total null
```

- Convert the resource to JSON
```powershell
$PaginatedResponseIssueTypeIssueCreateMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

