# NotificationScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the notification scheme. | [optional] 
**Expand** | **String** | Expand options that include additional notification scheme details in the response. | [optional] 
**Id** | **Int64** | The ID of the notification scheme. | [optional] 
**Name** | **String** | The name of the notification scheme. | [optional] 
**NotificationSchemeEvents** | [**NotificationSchemeEvent[]**](NotificationSchemeEvent.md) | The notification events and associated recipients. | [optional] 
**Projects** | **Int64[]** | The list of project IDs associated with the notification scheme. | [optional] 
**Scope** | [**Scope**](Scope.md) | The scope of the notification scheme. | [optional] 
**Self** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationScheme = Initialize-PSJiraNotificationScheme  -Description null `
 -Expand null `
 -Id null `
 -Name null `
 -NotificationSchemeEvents null `
 -Projects null `
 -Scope null `
 -Self null
```

- Convert the resource to JSON
```powershell
$NotificationScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

