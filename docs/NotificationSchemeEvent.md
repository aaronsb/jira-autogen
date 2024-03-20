# NotificationSchemeEvent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarEvent** | [**NotificationEvent**](NotificationEvent.md) |  | [optional] 
**Notifications** | [**EventNotification[]**](EventNotification.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationSchemeEvent = Initialize-PSJiraNotificationSchemeEvent  -VarEvent null `
 -Notifications null
```

- Convert the resource to JSON
```powershell
$NotificationSchemeEvent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

