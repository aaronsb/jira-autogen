# RequiredMappingByIssueType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeId** | **String** | The ID of the issue type. | [optional] 
**StatusIds** | **String[]** | The status IDs requiring mapping. | [optional] 

## Examples

- Prepare the resource
```powershell
$RequiredMappingByIssueType = Initialize-PSJiraRequiredMappingByIssueType  -IssueTypeId null `
 -StatusIds null
```

- Convert the resource to JSON
```powershell
$RequiredMappingByIssueType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

