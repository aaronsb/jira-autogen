# Group
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expand** | **String** | Expand options that include additional group details in the response. | [optional] [readonly] 
**GroupId** | **String** | The ID of the group, which uniquely identifies the group across all Atlassian products. For example, *952d12c3-5b5b-4d04-bb32-44d383afc4b2*. | [optional] 
**Name** | **String** | The name of group. | [optional] 
**Self** | **String** | The URL for these group details. | [optional] [readonly] 
**Users** | [**GroupUsers**](GroupUsers.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Group = Initialize-PSJiraGroup  -Expand null `
 -GroupId null `
 -Name null `
 -Self null `
 -Users null
```

- Convert the resource to JSON
```powershell
$Group | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

