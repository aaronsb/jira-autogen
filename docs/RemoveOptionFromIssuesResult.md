# RemoveOptionFromIssuesResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Errors** | [**SimpleErrorCollection**](SimpleErrorCollection.md) | A collection of errors related to unchanged issues. The collection size is limited, which means not all errors may be returned. | [optional] 
**ModifiedIssues** | **Int64[]** | The IDs of the modified issues. | [optional] 
**UnmodifiedIssues** | **Int64[]** | The IDs of the unchanged issues, those issues where errors prevent modification. | [optional] 

## Examples

- Prepare the resource
```powershell
$RemoveOptionFromIssuesResult = Initialize-PSJiraRemoveOptionFromIssuesResult  -Errors null `
 -ModifiedIssues null `
 -UnmodifiedIssues null
```

- Convert the resource to JSON
```powershell
$RemoveOptionFromIssuesResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

