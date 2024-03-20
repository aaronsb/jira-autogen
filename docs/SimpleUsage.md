# SimpleUsage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeIds** | **String[]** | The issue type IDs for the usage. | 
**ProjectId** | **String** | The project ID for the usage. | 

## Examples

- Prepare the resource
```powershell
$SimpleUsage = Initialize-PSJiraSimpleUsage  -IssueTypeIds null `
 -ProjectId null
```

- Convert the resource to JSON
```powershell
$SimpleUsage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

