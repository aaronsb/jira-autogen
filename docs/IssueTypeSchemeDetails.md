# IssueTypeSchemeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultIssueTypeId** | **String** | The ID of the default issue type of the issue type scheme. This ID must be included in &#x60;issueTypeIds&#x60;. | [optional] 
**Description** | **String** | The description of the issue type scheme. The maximum length is 4000 characters. | [optional] 
**IssueTypeIds** | **String[]** | The list of issue types IDs of the issue type scheme. At least one standard issue type ID is required. | 
**Name** | **String** | The name of the issue type scheme. The name must be unique. The maximum length is 255 characters. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeSchemeDetails = Initialize-PSJiraIssueTypeSchemeDetails  -DefaultIssueTypeId null `
 -Description null `
 -IssueTypeIds null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IssueTypeSchemeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

