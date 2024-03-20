# IssueTypeScreenSchemesProjects
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeScreenScheme** | [**IssueTypeScreenScheme**](IssueTypeScreenScheme.md) | Details of an issue type screen scheme. | 
**ProjectIds** | **String[]** | The IDs of the projects using the issue type screen scheme. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeScreenSchemesProjects = Initialize-PSJiraIssueTypeScreenSchemesProjects  -IssueTypeScreenScheme null `
 -ProjectIds null
```

- Convert the resource to JSON
```powershell
$IssueTypeScreenSchemesProjects | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

