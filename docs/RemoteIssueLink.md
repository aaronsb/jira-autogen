# RemoteIssueLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | [**Application**](Application.md) | Details of the remote application the linked item is in. | [optional] 
**GlobalId** | **String** | The global ID of the link, such as the ID of the item on the remote system. | [optional] 
**Id** | **Int64** | The ID of the link. | [optional] 
**Object** | [**RemoteObject**](RemoteObject.md) | Details of the item linked to. | [optional] 
**Relationship** | **String** | Description of the relationship between the issue and the linked item. | [optional] 
**Self** | **String** | The URL of the link. | [optional] 

## Examples

- Prepare the resource
```powershell
$RemoteIssueLink = Initialize-PSJiraRemoteIssueLink  -Application null `
 -GlobalId null `
 -Id null `
 -Object null `
 -Relationship null `
 -Self null
```

- Convert the resource to JSON
```powershell
$RemoteIssueLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

