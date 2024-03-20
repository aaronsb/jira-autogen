# IssueTypeScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultIssueTypeId** | **String** | The ID of the default issue type of the issue type scheme. | [optional] 
**Description** | **String** | The description of the issue type scheme. | [optional] 
**Id** | **String** | The ID of the issue type scheme. | 
**IsDefault** | **Boolean** | Whether the issue type scheme is the default. | [optional] 
**Name** | **String** | The name of the issue type scheme. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeScheme = Initialize-PSJiraIssueTypeScheme  -DefaultIssueTypeId null `
 -Description null `
 -Id null `
 -IsDefault null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IssueTypeScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

