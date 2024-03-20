# SuggestedIssue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the issue. | [optional] [readonly] 
**Img** | **String** | The URL of the issue type&#39;s avatar. | [optional] [readonly] 
**Key** | **String** | The key of the issue. | [optional] [readonly] 
**KeyHtml** | **String** | The key of the issue in HTML format. | [optional] [readonly] 
**Summary** | **String** | The phrase containing the query string in HTML format, with the string highlighted with HTML bold tags. | [optional] [readonly] 
**SummaryText** | **String** | The phrase containing the query string, as plain text. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SuggestedIssue = Initialize-PSJiraSuggestedIssue  -Id null `
 -Img null `
 -Key null `
 -KeyHtml null `
 -Summary null `
 -SummaryText null
```

- Convert the resource to JSON
```powershell
$SuggestedIssue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

