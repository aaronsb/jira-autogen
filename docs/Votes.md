# Votes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HasVoted** | **Boolean** | Whether the user making this request has voted on the issue. | [optional] [readonly] 
**Self** | **String** | The URL of these issue vote details. | [optional] [readonly] 
**Voters** | [**User[]**](User.md) | List of the users who have voted on this issue. An empty list is returned when the calling user doesn&#39;t have the *View voters and watchers* project permission. | [optional] [readonly] 
**Votes** | **Int64** | The number of votes on the issue. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Votes = Initialize-PSJiraVotes  -HasVoted null `
 -Self null `
 -Voters null `
 -Votes null
```

- Convert the resource to JSON
```powershell
$Votes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

