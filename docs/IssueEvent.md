# IssueEvent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the event. | [optional] [readonly] 
**Name** | **String** | The name of the event. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueEvent = Initialize-PSJiraIssueEvent  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IssueEvent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

