# IssueTypeSchemeProjectAssociation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeSchemeId** | **String** | The ID of the issue type scheme. | 
**ProjectId** | **String** | The ID of the project. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeSchemeProjectAssociation = Initialize-PSJiraIssueTypeSchemeProjectAssociation  -IssueTypeSchemeId null `
 -ProjectId null
```

- Convert the resource to JSON
```powershell
$IssueTypeSchemeProjectAssociation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

