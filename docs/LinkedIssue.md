# LinkedIssue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Fields** | [**LinkedIssueFields**](LinkedIssueFields.md) |  | [optional] 
**Id** | **String** | The ID of an issue. Required if &#x60;key&#x60; isn&#39;t provided. | [optional] 
**Key** | **String** | The key of an issue. Required if &#x60;id&#x60; isn&#39;t provided. | [optional] 
**Self** | **String** | The URL of the issue. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LinkedIssue = Initialize-PSJiraLinkedIssue  -Fields null `
 -Id null `
 -Key null `
 -Self null
```

- Convert the resource to JSON
```powershell
$LinkedIssue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

