# IssuePickerSuggestionsIssueType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the type of issues suggested for use in auto-completion. | [optional] [readonly] 
**Issues** | [**SuggestedIssue[]**](SuggestedIssue.md) | A list of issues suggested for use in auto-completion. | [optional] [readonly] 
**Label** | **String** | The label of the type of issues suggested for use in auto-completion. | [optional] [readonly] 
**Msg** | **String** | If no issue suggestions are found, returns a message indicating no suggestions were found, | [optional] [readonly] 
**Sub** | **String** | If issue suggestions are found, returns a message indicating the number of issues suggestions found and returned. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssuePickerSuggestionsIssueType = Initialize-PSJiraIssuePickerSuggestionsIssueType  -Id null `
 -Issues null `
 -Label null `
 -Msg null `
 -Sub null
```

- Convert the resource to JSON
```powershell
$IssuePickerSuggestionsIssueType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

