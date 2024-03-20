# WebhookRegistrationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** | The URL that specifies where to send the webhooks. This URL must use the same base URL as the Connect app. Only a single URL per app is allowed to be registered. | 
**Webhooks** | [**WebhookDetails[]**](WebhookDetails.md) | A list of webhooks. | 

## Examples

- Prepare the resource
```powershell
$WebhookRegistrationDetails = Initialize-PSJiraWebhookRegistrationDetails  -Url null `
 -Webhooks null
```

- Convert the resource to JSON
```powershell
$WebhookRegistrationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

