# IssueTypeScreenSchemeProjectAssociation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeScreenSchemeId** | **String** | The ID of the issue type screen scheme. | [optional] 
**ProjectId** | **String** | The ID of the project. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeScreenSchemeProjectAssociation = Initialize-PSJiraIssueTypeScreenSchemeProjectAssociation  -IssueTypeScreenSchemeId null `
 -ProjectId null
```

- Convert the resource to JSON
```powershell
$IssueTypeScreenSchemeProjectAssociation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

