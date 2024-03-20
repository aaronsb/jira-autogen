# ConnectModules
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Modules** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | A list of app modules in the same format as the &#x60;modules&#x60; property in the [app descriptor](https://developer.atlassian.com/cloud/jira/platform/app-descriptor/). | 

## Examples

- Prepare the resource
```powershell
$ConnectModules = Initialize-PSJiraConnectModules  -Modules null
```

- Convert the resource to JSON
```powershell
$ConnectModules | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

