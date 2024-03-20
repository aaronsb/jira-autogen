# ContainerForRegisteredWebhooks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WebhookRegistrationResult** | [**RegisteredWebhook[]**](RegisteredWebhook.md) | A list of registered webhooks. | [optional] 

## Examples

- Prepare the resource
```powershell
$ContainerForRegisteredWebhooks = Initialize-PSJiraContainerForRegisteredWebhooks  -WebhookRegistrationResult null
```

- Convert the resource to JSON
```powershell
$ContainerForRegisteredWebhooks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

