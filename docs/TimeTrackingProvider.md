# TimeTrackingProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The key for the time tracking provider. For example, *JIRA*. | 
**Name** | **String** | The name of the time tracking provider. For example, *JIRA provided time tracking*. | [optional] 
**Url** | **String** | The URL of the configuration page for the time tracking provider app. For example, */example/config/url*. This property is only returned if the &#x60;adminPageKey&#x60; property is set in the module descriptor of the time tracking provider app. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$TimeTrackingProvider = Initialize-PSJiraTimeTrackingProvider  -Key null `
 -Name null `
 -Url null
```

- Convert the resource to JSON
```powershell
$TimeTrackingProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

