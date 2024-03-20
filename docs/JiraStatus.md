# JiraStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the status. | [optional] 
**Id** | **String** | The ID of the status. | [optional] 
**Name** | **String** | The name of the status. | [optional] 
**Scope** | [**StatusScope**](StatusScope.md) |  | [optional] 
**StatusCategory** | **String** | The category of the status. | [optional] 
**Usages** | [**ProjectIssueTypes[]**](ProjectIssueTypes.md) | Projects and issue types where the status is used. Only available if the &#x60;usages&#x60; expand is requested. | [optional] 
**WorkflowUsages** | [**WorkflowUsages[]**](WorkflowUsages.md) | The workflows that use this status. Only available if the &#x60;workflowUsages&#x60; expand is requested. | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraStatus = Initialize-PSJiraJiraStatus  -Description null `
 -Id null `
 -Name null `
 -Scope null `
 -StatusCategory null `
 -Usages null `
 -WorkflowUsages null
```

- Convert the resource to JSON
```powershell
$JiraStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

