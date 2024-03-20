# WorkflowCapabilities
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectRules** | [**AvailableWorkflowConnectRule[]**](AvailableWorkflowConnectRule.md) | The Connect provided ecosystem rules available. | [optional] 
**EditorScope** | **String** | The scope of the workflow capabilities. &#x60;GLOBAL&#x60; for company-managed projects and &#x60;PROJECT&#x60; for team-managed projects. | [optional] 
**ForgeRules** | [**AvailableWorkflowForgeRule[]**](AvailableWorkflowForgeRule.md) | The Forge provided ecosystem rules available. | [optional] 
**ProjectTypes** | **String[]** | The types of projects that this capability set is available for. | [optional] 
**SystemRules** | [**AvailableWorkflowSystemRule[]**](AvailableWorkflowSystemRule.md) | The Atlassian provided system rules available. | [optional] 
**TriggerRules** | [**AvailableWorkflowTriggers[]**](AvailableWorkflowTriggers.md) | The trigger rules available. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowCapabilities = Initialize-PSJiraWorkflowCapabilities  -ConnectRules null `
 -EditorScope null `
 -ForgeRules null `
 -ProjectTypes null `
 -SystemRules null `
 -TriggerRules null
```

- Convert the resource to JSON
```powershell
$WorkflowCapabilities | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

