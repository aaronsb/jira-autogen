# FailedWebhooks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxResults** | **Int32** | The maximum number of items on the page. If the list of values is shorter than this number, then there are no more pages. | 
**Next** | **String** | The URL to the next page of results. Present only if the request returned at least one result.The next page may be empty at the time of receiving the response, but new failed webhooks may appear in time. You can save the URL to the next page and query for new results periodically (for example, every hour). | [optional] 
**Values** | [**FailedWebhook[]**](FailedWebhook.md) | The list of webhooks. | 

## Examples

- Prepare the resource
```powershell
$FailedWebhooks = Initialize-PSJiraFailedWebhooks  -MaxResults null `
 -Next null `
 -Values null
```

- Convert the resource to JSON
```powershell
$FailedWebhooks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

