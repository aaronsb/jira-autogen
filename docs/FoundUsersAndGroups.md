# FoundUsersAndGroups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Groups** | [**FoundGroups**](FoundGroups.md) |  | [optional] 
**Users** | [**FoundUsers**](FoundUsers.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FoundUsersAndGroups = Initialize-PSJiraFoundUsersAndGroups  -Groups null `
 -Users null
```

- Convert the resource to JSON
```powershell
$FoundUsersAndGroups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

