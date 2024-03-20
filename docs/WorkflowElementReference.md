# WorkflowElementReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PropertyKey** | **String** | A property key. | [optional] 
**RuleId** | **String** | A rule ID. | [optional] 
**StatusMappingReference** | [**ProjectAndIssueTypePair**](ProjectAndIssueTypePair.md) |  | [optional] 
**StatusReference** | **String** | A status reference. | [optional] 
**TransitionId** | **String** | A transition ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowElementReference = Initialize-PSJiraWorkflowElementReference  -PropertyKey null `
 -RuleId null `
 -StatusMappingReference null `
 -StatusReference null `
 -TransitionId null
```

- Convert the resource to JSON
```powershell
$WorkflowElementReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

