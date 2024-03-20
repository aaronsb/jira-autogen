# IssueTypeUpdateBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvatarId** | **Int64** | The ID of an issue type avatar. | [optional] 
**Description** | **String** | The description of the issue type. | [optional] 
**Name** | **String** | The unique name for the issue type. The maximum length is 60 characters. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeUpdateBean = Initialize-PSJiraIssueTypeUpdateBean  -AvatarId null `
 -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IssueTypeUpdateBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

