# WorkflowStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the issue status. | 
**Name** | **String** | The name of the status in the workflow. | 
**Properties** | [**System.Collections.Hashtable**](AnyType.md) | Additional properties that modify the behavior of issues in this status. Supports the properties &#x60;jira.issue.editable&#x60; and &#x60;issueEditable&#x60; (deprecated) that indicate whether issues are editable. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowStatus = Initialize-PSJiraWorkflowStatus  -Id null `
 -Name null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$WorkflowStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

