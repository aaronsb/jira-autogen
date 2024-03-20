# IssueTypeSchemeUpdateDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultIssueTypeId** | **String** | The ID of the default issue type of the issue type scheme. | [optional] 
**Description** | **String** | The description of the issue type scheme. The maximum length is 4000 characters. | [optional] 
**Name** | **String** | The name of the issue type scheme. The name must be unique. The maximum length is 255 characters. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeSchemeUpdateDetails = Initialize-PSJiraIssueTypeSchemeUpdateDetails  -DefaultIssueTypeId null `
 -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IssueTypeSchemeUpdateDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

