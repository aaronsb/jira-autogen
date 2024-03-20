# Errors
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueIsSubtask** | [**ModelError**](ModelError.md) |  | [optional] 
**IssuesInArchivedProjects** | [**ModelError**](ModelError.md) |  | [optional] 
**IssuesInUnlicensedProjects** | [**ModelError**](ModelError.md) |  | [optional] 
**IssuesNotFound** | [**ModelError**](ModelError.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Errors = Initialize-PSJiraErrors  -IssueIsSubtask null `
 -IssuesInArchivedProjects null `
 -IssuesInUnlicensedProjects null `
 -IssuesNotFound null
```

- Convert the resource to JSON
```powershell
$Errors | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

