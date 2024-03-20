# ProjectIssueTypes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypes** | **String[]** | IDs of the issue types | [optional] 
**Project** | [**ProjectId**](ProjectId.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectIssueTypes = Initialize-PSJiraProjectIssueTypes  -IssueTypes null `
 -Project null
```

- Convert the resource to JSON
```powershell
$ProjectIssueTypes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

