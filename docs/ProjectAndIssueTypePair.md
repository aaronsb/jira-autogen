# ProjectAndIssueTypePair
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeId** | **String** | The ID of the issue type. | 
**ProjectId** | **String** | The ID of the project. | 

## Examples

- Prepare the resource
```powershell
$ProjectAndIssueTypePair = Initialize-PSJiraProjectAndIssueTypePair  -IssueTypeId null `
 -ProjectId null
```

- Convert the resource to JSON
```powershell
$ProjectAndIssueTypePair | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

