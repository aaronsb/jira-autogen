# WorkflowReferenceStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Deprecated** | **Boolean** | Indicates if the status is deprecated. | [optional] 
**Layout** | [**WorkflowStatusLayout**](WorkflowStatusLayout.md) |  | [optional] 
**Properties** | **System.Collections.Hashtable** | The properties associated with the status. | [optional] 
**StatusReference** | **String** | The reference of the status. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowReferenceStatus = Initialize-PSJiraWorkflowReferenceStatus  -Deprecated null `
 -Layout null `
 -Properties null `
 -StatusReference null
```

- Convert the resource to JSON
```powershell
$WorkflowReferenceStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

