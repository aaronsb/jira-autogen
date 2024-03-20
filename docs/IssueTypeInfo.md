# IssueTypeInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvatarId** | **Int64** | The avatar of the issue type. | [optional] [readonly] 
**Id** | **Int64** | The ID of the issue type. | [optional] [readonly] 
**Name** | **String** | The name of the issue type. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueTypeInfo = Initialize-PSJiraIssueTypeInfo  -AvatarId null `
 -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IssueTypeInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

