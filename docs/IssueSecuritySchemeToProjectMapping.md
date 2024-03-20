# IssueSecuritySchemeToProjectMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueSecuritySchemeId** | **String** |  | [optional] [readonly] 
**ProjectId** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueSecuritySchemeToProjectMapping = Initialize-PSJiraIssueSecuritySchemeToProjectMapping  -IssueSecuritySchemeId null `
 -ProjectId null
```

- Convert the resource to JSON
```powershell
$IssueSecuritySchemeToProjectMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

