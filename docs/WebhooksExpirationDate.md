# WebhooksExpirationDate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpirationDate** | **Int64** | The expiration date of all the refreshed webhooks. | [readonly] 

## Examples

- Prepare the resource
```powershell
$WebhooksExpirationDate = Initialize-PSJiraWebhooksExpirationDate  -ExpirationDate null
```

- Convert the resource to JSON
```powershell
$WebhooksExpirationDate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

