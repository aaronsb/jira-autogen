# NotificationRecipientsRestrictions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupIds** | **String[]** | List of groupId memberships required to receive the notification. | [optional] 
**Groups** | [**GroupName[]**](GroupName.md) | List of group memberships required to receive the notification. | [optional] 
**Permissions** | [**RestrictedPermission[]**](RestrictedPermission.md) | List of permissions required to receive the notification. | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationRecipientsRestrictions = Initialize-PSJiraNotificationRecipientsRestrictions  -GroupIds null `
 -Groups null `
 -Permissions null
```

- Convert the resource to JSON
```powershell
$NotificationRecipientsRestrictions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

