# IssueTypeSchemeProjects
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeScheme** | [**IssueTypeScheme**](IssueTypeScheme.md) | Details of an issue type scheme. | 
**ProjectIds** | **String[]** | The IDs of the projects using the issue type scheme. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeSchemeProjects = Initialize-PSJiraIssueTypeSchemeProjects  -IssueTypeScheme null `
 -ProjectIds null
```

- Convert the resource to JSON
```powershell
$IssueTypeSchemeProjects | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

