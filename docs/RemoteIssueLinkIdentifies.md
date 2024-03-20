# RemoteIssueLinkIdentifies
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the remote issue link, such as the ID of the item on the remote system. | [optional] [readonly] 
**Self** | **String** | The URL of the remote issue link. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$RemoteIssueLinkIdentifies = Initialize-PSJiraRemoteIssueLinkIdentifies  -Id null `
 -Self null
```

- Convert the resource to JSON
```powershell
$RemoteIssueLinkIdentifies | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

