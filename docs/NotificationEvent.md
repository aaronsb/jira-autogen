# NotificationEvent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the event. | [optional] 
**Id** | **Int64** | The ID of the event. The event can be a [Jira system event](https://confluence.atlassian.com/x/8YdKLg#Creatinganotificationscheme-eventsEvents) or a [custom event](https://confluence.atlassian.com/x/AIlKLg). | [optional] 
**Name** | **String** | The name of the event. | [optional] 
**TemplateEvent** | [**NotificationEvent**](NotificationEvent.md) | The template of the event. Only custom events configured by Jira administrators have template. | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationEvent = Initialize-PSJiraNotificationEvent  -Description null `
 -Id null `
 -Name null `
 -TemplateEvent null
```

- Convert the resource to JSON
```powershell
$NotificationEvent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

