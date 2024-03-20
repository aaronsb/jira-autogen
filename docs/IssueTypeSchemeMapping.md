# IssueTypeSchemeMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeId** | **String** | The ID of the issue type. | 
**IssueTypeSchemeId** | **String** | The ID of the issue type scheme. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeSchemeMapping = Initialize-PSJiraIssueTypeSchemeMapping  -IssueTypeId null `
 -IssueTypeSchemeId null
```

- Convert the resource to JSON
```powershell
$IssueTypeSchemeMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

