# NotificationSchemeNotificationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NotificationType** | **String** | The notification type, e.g &#x60;CurrentAssignee&#x60;, &#x60;Group&#x60;, &#x60;EmailAddress&#x60;. | 
**Parameter** | **String** | The value corresponding to the specified notification type. | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationSchemeNotificationDetails = Initialize-PSJiraNotificationSchemeNotificationDetails  -NotificationType null `
 -Parameter null
```

- Convert the resource to JSON
```powershell
$NotificationSchemeNotificationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

