# IssuePickerSuggestions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sections** | [**IssuePickerSuggestionsIssueType[]**](IssuePickerSuggestionsIssueType.md) | A list of issues for an issue type suggested for use in auto-completion. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssuePickerSuggestions = Initialize-PSJiraIssuePickerSuggestions  -Sections null
```

- Convert the resource to JSON
```powershell
$IssuePickerSuggestions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

