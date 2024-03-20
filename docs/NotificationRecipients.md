# NotificationRecipients
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Assignee** | **Boolean** | Whether the notification should be sent to the issue&#39;s assignees. | [optional] 
**GroupIds** | **String[]** | List of groupIds to receive the notification. | [optional] 
**Groups** | [**GroupName[]**](GroupName.md) | List of groups to receive the notification. | [optional] 
**Reporter** | **Boolean** | Whether the notification should be sent to the issue&#39;s reporter. | [optional] 
**Users** | [**UserDetails[]**](UserDetails.md) | List of users to receive the notification. | [optional] 
**Voters** | **Boolean** | Whether the notification should be sent to the issue&#39;s voters. | [optional] 
**Watchers** | **Boolean** | Whether the notification should be sent to the issue&#39;s watchers. | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationRecipients = Initialize-PSJiraNotificationRecipients  -Assignee null `
 -GroupIds null `
 -Groups null `
 -Reporter null `
 -Users null `
 -Voters null `
 -Watchers null
```

- Convert the resource to JSON
```powershell
$NotificationRecipients | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

