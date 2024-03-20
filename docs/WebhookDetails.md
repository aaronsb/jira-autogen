# WebhookDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Events** | **String[]** | The Jira events that trigger the webhook. | 
**FieldIdsFilter** | **String[]** | A list of field IDs. When the issue changelog contains any of the fields, the webhook &#x60;jira:issue_updated&#x60; is sent. If this parameter is not present, the app is notified about all field updates. | [optional] 
**IssuePropertyKeysFilter** | **String[]** | A list of issue property keys. A change of those issue properties triggers the &#x60;issue_property_set&#x60; or &#x60;issue_property_deleted&#x60; webhooks. If this parameter is not present, the app is notified about all issue property updates. | [optional] 
**JqlFilter** | **String** | The JQL filter that specifies which issues the webhook is sent for. Only a subset of JQL can be used. The supported elements are:   *  Fields: &#x60;issueKey&#x60;, &#x60;project&#x60;, &#x60;issuetype&#x60;, &#x60;status&#x60;, &#x60;assignee&#x60;, &#x60;reporter&#x60;, &#x60;issue.property&#x60;, and &#x60;cf[id]&#x60;. For custom fields (&#x60;cf[id]&#x60;), only the epic label custom field is supported.&quot;&quot;.  *  Operators: &#x60;&#x3D;&#x60;, &#x60;!&#x3D;&#x60;, &#x60;IN&#x60;, and &#x60;NOT IN&#x60;. | 

## Examples

- Prepare the resource
```powershell
$WebhookDetails = Initialize-PSJiraWebhookDetails  -Events null `
 -FieldIdsFilter null `
 -IssuePropertyKeysFilter null `
 -JqlFilter null
```

- Convert the resource to JSON
```powershell
$WebhookDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

