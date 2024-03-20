# GroupDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupId** | **String** | The ID of the group, which uniquely identifies the group across all Atlassian products. For example, *952d12c3-5b5b-4d04-bb32-44d383afc4b2*. | [optional] 
**Name** | **String** | The name of the group. | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupDetails = Initialize-PSJiraGroupDetails  -GroupId null `
 -Name null
```

- Convert the resource to JSON
```powershell
$GroupDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

