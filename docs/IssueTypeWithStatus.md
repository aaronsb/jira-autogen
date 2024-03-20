# IssueTypeWithStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the issue type. | [readonly] 
**Name** | **String** | The name of the issue type. | [readonly] 
**Self** | **String** | The URL of the issue type&#39;s status details. | [readonly] 
**Statuses** | [**StatusDetails[]**](StatusDetails.md) | List of status details for the issue type. | [readonly] 
**Subtask** | **Boolean** | Whether this issue type represents subtasks. | [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueTypeWithStatus = Initialize-PSJiraIssueTypeWithStatus  -Id null `
 -Name null `
 -Self null `
 -Statuses null `
 -Subtask null
```

- Convert the resource to JSON
```powershell
$IssueTypeWithStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

