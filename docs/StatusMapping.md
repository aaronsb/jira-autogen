# StatusMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeId** | **String** | The ID of the issue type. | 
**NewStatusId** | **String** | The ID of the new status. | 
**StatusId** | **String** | The ID of the status. | 

## Examples

- Prepare the resource
```powershell
$StatusMapping = Initialize-PSJiraStatusMapping  -IssueTypeId null `
 -NewStatusId null `
 -StatusId null
```

- Convert the resource to JSON
```powershell
$StatusMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

