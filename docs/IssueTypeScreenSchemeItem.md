# IssueTypeScreenSchemeItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeId** | **String** | The ID of the issue type or *default*. Only issue types used in classic projects are accepted. When creating an issue screen scheme, an entry for *default* must be provided and defines the mapping for all issue types without a screen scheme. Otherwise, a *default* entry can&#39;t be provided. | 
**IssueTypeScreenSchemeId** | **String** | The ID of the issue type screen scheme. | 
**ScreenSchemeId** | **String** | The ID of the screen scheme. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeScreenSchemeItem = Initialize-PSJiraIssueTypeScreenSchemeItem  -IssueTypeId null `
 -IssueTypeScreenSchemeId null `
 -ScreenSchemeId null
```

- Convert the resource to JSON
```powershell
$IssueTypeScreenSchemeItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

