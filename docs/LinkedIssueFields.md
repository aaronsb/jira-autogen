# LinkedIssueFields
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Assignee** | [**FieldsAssignee**](FieldsAssignee.md) |  | [optional] 
**IssueType** | [**FieldsIssueType**](FieldsIssueType.md) |  | [optional] 
**Issuetype** | [**IssueTypeDetails**](IssueTypeDetails.md) |  | [optional] 
**Priority** | [**FieldsPriority**](FieldsPriority.md) |  | [optional] 
**Status** | [**FieldsStatus**](FieldsStatus.md) |  | [optional] 
**Summary** | **String** | The summary description of the linked issue. | [optional] [readonly] 
**Timetracking** | [**FieldsTimetracking**](FieldsTimetracking.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LinkedIssueFields = Initialize-PSJiraLinkedIssueFields  -Assignee null `
 -IssueType null `
 -Issuetype null `
 -Priority null `
 -Status null `
 -Summary null `
 -Timetracking null
```

- Convert the resource to JSON
```powershell
$LinkedIssueFields | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

