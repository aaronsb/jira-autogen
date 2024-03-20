# WorkflowScope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Project** | [**ProjectId**](ProjectId.md) |  | [optional] 
**Type** | **String** | The scope of the workflow. &#x60;GLOBAL&#x60; for company-managed projects and &#x60;PROJECT&#x60; for team-managed projects. | 

## Examples

- Prepare the resource
```powershell
$WorkflowScope = Initialize-PSJiraWorkflowScope  -Project null `
 -Type null
```

- Convert the resource to JSON
```powershell
$WorkflowScope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

