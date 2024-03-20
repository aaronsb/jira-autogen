# PublishDraftWorkflowScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StatusMappings** | [**StatusMapping[]**](StatusMapping.md) | Mappings of statuses to new statuses for issue types. | [optional] 

## Examples

- Prepare the resource
```powershell
$PublishDraftWorkflowScheme = Initialize-PSJiraPublishDraftWorkflowScheme  -StatusMappings null
```

- Convert the resource to JSON
```powershell
$PublishDraftWorkflowScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

