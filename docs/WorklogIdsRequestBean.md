# WorklogIdsRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **Int64[]** | A list of worklog IDs. | 

## Examples

- Prepare the resource
```powershell
$WorklogIdsRequestBean = Initialize-PSJiraWorklogIdsRequestBean  -Ids null
```

- Convert the resource to JSON
```powershell
$WorklogIdsRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

