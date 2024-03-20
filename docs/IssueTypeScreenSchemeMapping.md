# IssueTypeScreenSchemeMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeId** | **String** | The ID of the issue type or *default*. Only issue types used in classic projects are accepted. An entry for *default* must be provided and defines the mapping for all issue types without a screen scheme. | 
**ScreenSchemeId** | **String** | The ID of the screen scheme. Only screen schemes used in classic projects are accepted. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeScreenSchemeMapping = Initialize-PSJiraIssueTypeScreenSchemeMapping  -IssueTypeId null `
 -ScreenSchemeId null
```

- Convert the resource to JSON
```powershell
$IssueTypeScreenSchemeMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

