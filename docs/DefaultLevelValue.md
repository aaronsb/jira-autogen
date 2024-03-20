# DefaultLevelValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultLevelId** | **String** | The ID of the issue security level to set as default for the specified scheme. Providing null will reset the default level. | 
**IssueSecuritySchemeId** | **String** | The ID of the issue security scheme to set default level for. | 

## Examples

- Prepare the resource
```powershell
$DefaultLevelValue = Initialize-PSJiraDefaultLevelValue  -DefaultLevelId null `
 -IssueSecuritySchemeId null
```

- Convert the resource to JSON
```powershell
$DefaultLevelValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

