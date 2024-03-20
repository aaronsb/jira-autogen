# Status
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Icon** | [**Icon**](Icon.md) | Details of the icon representing the status. If not provided, no status icon displays in Jira. | [optional] 
**Resolved** | **Boolean** | Whether the item is resolved. If set to &quot;&quot;true&quot;&quot;, the link to the issue is displayed in a strikethrough font, otherwise the link displays in normal font. | [optional] 

## Examples

- Prepare the resource
```powershell
$Status = Initialize-PSJiraStatus  -Icon null `
 -Resolved null
```

- Convert the resource to JSON
```powershell
$Status | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

