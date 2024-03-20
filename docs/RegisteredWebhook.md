# RegisteredWebhook
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedWebhookId** | **Int64** | The ID of the webhook. Returned if the webhook is created. | [optional] 
**Errors** | **String[]** | Error messages specifying why the webhook creation failed. | [optional] 

## Examples

- Prepare the resource
```powershell
$RegisteredWebhook = Initialize-PSJiraRegisteredWebhook  -CreatedWebhookId null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$RegisteredWebhook | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

