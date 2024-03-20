# IssueTypeScreenSchemeUpdateDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the issue type screen scheme. The maximum length is 255 characters. | [optional] 
**Name** | **String** | The name of the issue type screen scheme. The name must be unique. The maximum length is 255 characters. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeScreenSchemeUpdateDetails = Initialize-PSJiraIssueTypeScreenSchemeUpdateDetails  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IssueTypeScreenSchemeUpdateDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

