# ContextForProjectAndIssueType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the custom field context. | 
**IssueTypeId** | **String** | The ID of the issue type. | 
**ProjectId** | **String** | The ID of the project. | 

## Examples

- Prepare the resource
```powershell
$ContextForProjectAndIssueType = Initialize-PSJiraContextForProjectAndIssueType  -ContextId null `
 -IssueTypeId null `
 -ProjectId null
```

- Convert the resource to JSON
```powershell
$ContextForProjectAndIssueType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

