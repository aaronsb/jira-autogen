# IssueFilterForBulkPropertyDelete
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CurrentValue** | [**AnyType**](.md) | The value of properties to perform the bulk operation on. | [optional] 
**EntityIds** | **Int64[]** | List of issues to perform the bulk delete operation on. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueFilterForBulkPropertyDelete = Initialize-PSJiraIssueFilterForBulkPropertyDelete  -CurrentValue null `
 -EntityIds null
```

- Convert the resource to JSON
```powershell
$IssueFilterForBulkPropertyDelete | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

