# IssueLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the issue link. | [optional] [readonly] 
**InwardIssue** | [**LinkedIssue**](LinkedIssue.md) | Provides details about the linked issue. If presenting this link in a user interface, use the &#x60;inward&#x60; field of the issue link type to label the link. | 
**OutwardIssue** | [**LinkedIssue**](LinkedIssue.md) | Provides details about the linked issue. If presenting this link in a user interface, use the &#x60;outward&#x60; field of the issue link type to label the link. | 
**Self** | **String** | The URL of the issue link. | [optional] [readonly] 
**Type** | [**IssueLinkType**](IssueLinkType.md) | The type of link between the issues. | 

## Examples

- Prepare the resource
```powershell
$IssueLink = Initialize-PSJiraIssueLink  -Id null `
 -InwardIssue null `
 -OutwardIssue null `
 -Self null `
 -Type null
```

- Convert the resource to JSON
```powershell
$IssueLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

