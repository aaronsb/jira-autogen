# ChangedWorklogs
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LastPage** | **Boolean** |  | [optional] 
**NextPage** | **String** | The URL of the next list of changed worklogs. | [optional] [readonly] 
**Self** | **String** | The URL of this changed worklogs list. | [optional] [readonly] 
**Since** | **Int64** | The datetime of the first worklog item in the list. | [optional] [readonly] 
**VarUntil** | **Int64** | The datetime of the last worklog item in the list. | [optional] [readonly] 
**Values** | [**ChangedWorklog[]**](ChangedWorklog.md) | Changed worklog list. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ChangedWorklogs = Initialize-PSJiraChangedWorklogs  -LastPage null `
 -NextPage null `
 -Self null `
 -Since null `
 -VarUntil null `
 -Values null
```

- Convert the resource to JSON
```powershell
$ChangedWorklogs | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

