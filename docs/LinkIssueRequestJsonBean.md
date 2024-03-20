# LinkIssueRequestJsonBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | [**Comment**](Comment.md) |  | [optional] 
**InwardIssue** | [**LinkedIssue**](LinkedIssue.md) |  | 
**OutwardIssue** | [**LinkedIssue**](LinkedIssue.md) |  | 
**Type** | [**IssueLinkType**](IssueLinkType.md) |  | 

## Examples

- Prepare the resource
```powershell
$LinkIssueRequestJsonBean = Initialize-PSJiraLinkIssueRequestJsonBean  -Comment null `
 -InwardIssue null `
 -OutwardIssue null `
 -Type null
```

- Convert the resource to JSON
```powershell
$LinkIssueRequestJsonBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

