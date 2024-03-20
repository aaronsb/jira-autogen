# Application
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the application. Used in conjunction with the (remote) object icon title to display a tooltip for the link&#39;s icon. The tooltip takes the format &quot;&quot;\[application name\] icon title&quot;&quot;. Blank items are excluded from the tooltip title. If both items are blank, the icon tooltop displays as &quot;&quot;Web Link&quot;&quot;. Grouping and sorting of links may place links without an application name last. | [optional] 
**Type** | **String** | The name-spaced type of the application, used by registered rendering apps. | [optional] 

## Examples

- Prepare the resource
```powershell
$Application = Initialize-PSJiraApplication  -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$Application | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

