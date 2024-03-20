# IssueTypeScreenScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the issue type screen scheme. | [optional] 
**Id** | **String** | The ID of the issue type screen scheme. | 
**Name** | **String** | The name of the issue type screen scheme. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeScreenScheme = Initialize-PSJiraIssueTypeScreenScheme  -Description null `
 -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IssueTypeScreenScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

