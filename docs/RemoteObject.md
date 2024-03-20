# RemoteObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Icon** | [**Icon**](Icon.md) | Details of the icon for the item. If no icon is defined, the default link icon is used in Jira. | [optional] 
**Status** | [**Status**](Status.md) | The status of the item. | [optional] 
**Summary** | **String** | The summary details of the item. | [optional] 
**Title** | **String** | The title of the item. | 
**Url** | **String** | The URL of the item. | 

## Examples

- Prepare the resource
```powershell
$RemoteObject = Initialize-PSJiraRemoteObject  -Icon null `
 -Status null `
 -Summary null `
 -Title null `
 -Url null
```

- Convert the resource to JSON
```powershell
$RemoteObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

