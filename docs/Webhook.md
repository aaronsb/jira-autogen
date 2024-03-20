# Webhook
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Events** | **String[]** | The Jira events that trigger the webhook. | 
**ExpirationDate** | **Int64** | The date after which the webhook is no longer sent. Use [Extend webhook life](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-webhooks/#api-rest-api-3-webhook-refresh-put) to extend the date. | [optional] [readonly] 
**FieldIdsFilter** | **String[]** | A list of field IDs. When the issue changelog contains any of the fields, the webhook &#x60;jira:issue_updated&#x60; is sent. If this parameter is not present, the app is notified about all field updates. | [optional] 
**Id** | **Int64** | The ID of the webhook. | 
**IssuePropertyKeysFilter** | **String[]** | A list of issue property keys. A change of those issue properties triggers the &#x60;issue_property_set&#x60; or &#x60;issue_property_deleted&#x60; webhooks. If this parameter is not present, the app is notified about all issue property updates. | [optional] 
**JqlFilter** | **String** | The JQL filter that specifies which issues the webhook is sent for. | 

## Examples

- Prepare the resource
```powershell
$Webhook = Initialize-PSJiraWebhook  -Events null `
 -ExpirationDate null `
 -FieldIdsFilter null `
 -Id null `
 -IssuePropertyKeysFilter null `
 -JqlFilter null
```

- Convert the resource to JSON
```powershell
$Webhook | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

