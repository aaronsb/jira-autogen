# Notification
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HtmlBody** | **String** | The HTML body of the email notification for the issue. | [optional] 
**Restrict** | [**NotificationRecipientsRestrictions**](NotificationRecipientsRestrictions.md) | Restricts the notifications to users with the specified permissions. | [optional] 
**Subject** | **String** | The subject of the email notification for the issue. If this is not specified, then the subject is set to the issue key and summary. | [optional] 
**TextBody** | **String** | The plain text body of the email notification for the issue. | [optional] 
**To** | [**NotificationRecipients**](NotificationRecipients.md) | The recipients of the email notification for the issue. | [optional] 

## Examples

- Prepare the resource
```powershell
$Notification = Initialize-PSJiraNotification  -HtmlBody null `
 -Restrict null `
 -Subject null `
 -TextBody null `
 -To null
```

- Convert the resource to JSON
```powershell
$Notification | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

