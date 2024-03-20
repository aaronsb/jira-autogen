# AuditRecordBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssociatedItems** | [**AssociatedItemBean[]**](AssociatedItemBean.md) | The list of items associated with the changed record. | [optional] [readonly] 
**AuthorKey** | **String** | Deprecated, use &#x60;authorAccountId&#x60; instead. The key of the user who created the audit record. | [optional] [readonly] 
**Category** | **String** | The category of the audit record. For a list of these categories, see the help article [Auditing in Jira applications](https://confluence.atlassian.com/x/noXKM). | [optional] [readonly] 
**ChangedValues** | [**ChangedValueBean[]**](ChangedValueBean.md) | The list of values changed in the record event. | [optional] [readonly] 
**Created** | **System.DateTime** | The date and time on which the audit record was created. | [optional] [readonly] 
**Description** | **String** | The description of the audit record. | [optional] [readonly] 
**EventSource** | **String** | The event the audit record originated from. | [optional] [readonly] 
**Id** | **Int64** | The ID of the audit record. | [optional] [readonly] 
**ObjectItem** | [**AssociatedItemBean**](AssociatedItemBean.md) |  | [optional] 
**RemoteAddress** | **String** | The URL of the computer where the creation of the audit record was initiated. | [optional] [readonly] 
**Summary** | **String** | The summary of the audit record. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AuditRecordBean = Initialize-PSJiraAuditRecordBean  -AssociatedItems null `
 -AuthorKey null `
 -Category null `
 -ChangedValues null `
 -Created null `
 -Description null `
 -EventSource null `
 -Id null `
 -ObjectItem null `
 -RemoteAddress null `
 -Summary null
```

- Convert the resource to JSON
```powershell
$AuditRecordBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

