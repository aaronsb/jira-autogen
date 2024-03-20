# NotificationSchemeEventDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarEvent** | [**NotificationSchemeEventTypeId**](NotificationSchemeEventTypeId.md) | The ID of the event. | 
**Notifications** | [**NotificationSchemeNotificationDetails[]**](NotificationSchemeNotificationDetails.md) | The list of notifications mapped to a specified event. | 

## Examples

- Prepare the resource
```powershell
$NotificationSchemeEventDetails = Initialize-PSJiraNotificationSchemeEventDetails  -VarEvent null `
 -Notifications null
```

- Convert the resource to JSON
```powershell
$NotificationSchemeEventDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

