# ProjectIssueTypeMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeId** | **String** | The ID of the issue type. | 
**ProjectId** | **String** | The ID of the project. | 

## Examples

- Prepare the resource
```powershell
$ProjectIssueTypeMapping = Initialize-PSJiraProjectIssueTypeMapping  -IssueTypeId null `
 -ProjectId null
```

- Convert the resource to JSON
```powershell
$ProjectIssueTypeMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

