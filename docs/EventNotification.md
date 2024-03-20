# EventNotification
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** | The email address. | [optional] 
**Expand** | **String** | Expand options that include additional event notification details in the response. | [optional] 
**Field** | [**FieldDetails**](FieldDetails.md) | The custom user or group field. | [optional] 
**Group** | [**GroupName**](GroupName.md) | The specified group. | [optional] 
**Id** | **Int64** | The ID of the notification. | [optional] 
**NotificationType** | **String** | Identifies the recipients of the notification. | [optional] 
**Parameter** | **String** | As a group&#39;s name can change, use of &#x60;recipient&#x60; is recommended. The identifier associated with the &#x60;notificationType&#x60; value that defines the receiver of the notification, where the receiver isn&#39;t implied by &#x60;notificationType&#x60; value. So, when &#x60;notificationType&#x60; is:   *  &#x60;User&#x60; The &#x60;parameter&#x60; is the user account ID.  *  &#x60;Group&#x60; The &#x60;parameter&#x60; is the group name.  *  &#x60;ProjectRole&#x60; The &#x60;parameter&#x60; is the project role ID.  *  &#x60;UserCustomField&#x60; The &#x60;parameter&#x60; is the ID of the custom field.  *  &#x60;GroupCustomField&#x60; The &#x60;parameter&#x60; is the ID of the custom field. | [optional] 
**ProjectRole** | [**ProjectRole**](ProjectRole.md) | The specified project role. | [optional] 
**Recipient** | **String** | The identifier associated with the &#x60;notificationType&#x60; value that defines the receiver of the notification, where the receiver isn&#39;t implied by the &#x60;notificationType&#x60; value. So, when &#x60;notificationType&#x60; is:   *  &#x60;User&#x60;, &#x60;recipient&#x60; is the user account ID.  *  &#x60;Group&#x60;, &#x60;recipient&#x60; is the group ID.  *  &#x60;ProjectRole&#x60;, &#x60;recipient&#x60; is the project role ID.  *  &#x60;UserCustomField&#x60;, &#x60;recipient&#x60; is the ID of the custom field.  *  &#x60;GroupCustomField&#x60;, &#x60;recipient&#x60; is the ID of the custom field. | [optional] 
**User** | [**UserDetails**](UserDetails.md) | The specified user. | [optional] 

## Examples

- Prepare the resource
```powershell
$EventNotification = Initialize-PSJiraEventNotification  -EmailAddress null `
 -Expand null `
 -Field null `
 -Group null `
 -Id null `
 -NotificationType null `
 -Parameter null `
 -ProjectRole null `
 -Recipient null `
 -User null
```

- Convert the resource to JSON
```powershell
$EventNotification | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

