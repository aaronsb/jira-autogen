# Icon
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Link** | **String** | The URL of the tooltip, used only for a status icon. If not set, the status icon in Jira is not clickable. | [optional] 
**Title** | **String** | The title of the icon. This is used as follows:   *  For a status icon it is used as a tooltip on the icon. If not set, the status icon doesn&#39;t display a tooltip in Jira.  *  For the remote object icon it is used in conjunction with the application name to display a tooltip for the link&#39;s icon. The tooltip takes the format &quot;&quot;\[application name\] icon title&quot;&quot;. Blank itemsare excluded from the tooltip title. If both items are blank, the icon tooltop displays as &quot;&quot;Web Link&quot;&quot;. | [optional] 
**Url16x16** | **String** | The URL of an icon that displays at 16x16 pixel in Jira. | [optional] 

## Examples

- Prepare the resource
```powershell
$Icon = Initialize-PSJiraIcon  -Link null `
 -Title null `
 -Url16x16 null
```

- Convert the resource to JSON
```powershell
$Icon | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

