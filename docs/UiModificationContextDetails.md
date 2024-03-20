# UiModificationContextDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the UI modification context. | [optional] [readonly] 
**IsAvailable** | **Boolean** | Whether a context is available. For example, when a project is deleted the context becomes unavailable. | [optional] [readonly] 
**IssueTypeId** | **String** | The issue type ID of the context. Null is treated as a wildcard, meaning the UI modification will be applied to all issue types. Each UI modification context can have a maximum of one wildcard. | [optional] 
**ProjectId** | **String** | The project ID of the context. Null is treated as a wildcard, meaning the UI modification will be applied to all projects. Each UI modification context can have a maximum of one wildcard. | [optional] 
**ViewType** | **String** | The view type of the context. Only &#x60;GIC&#x60;(Global Issue Create) and &#x60;IssueView&#x60; are supported. Null is treated as a wildcard, meaning the UI modification will be applied to all view types. Each UI modification context can have a maximum of one wildcard. | [optional] 

## Examples

- Prepare the resource
```powershell
$UiModificationContextDetails = Initialize-PSJiraUiModificationContextDetails  -Id null `
 -IsAvailable null `
 -IssueTypeId null `
 -ProjectId null `
 -ViewType null
```

- Convert the resource to JSON
```powershell
$UiModificationContextDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

