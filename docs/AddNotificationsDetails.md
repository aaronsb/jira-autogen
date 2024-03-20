# AddNotificationsDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NotificationSchemeEvents** | [**NotificationSchemeEventDetails[]**](NotificationSchemeEventDetails.md) | The list of notifications which should be added to the notification scheme. | 

## Examples

- Prepare the resource
```powershell
$AddNotificationsDetails = Initialize-PSJiraAddNotificationsDetails  -NotificationSchemeEvents null
```

- Convert the resource to JSON
```powershell
$AddNotificationsDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

