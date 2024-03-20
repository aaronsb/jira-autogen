# IssueFieldOptionConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | **String[]** | DEPRECATED | [optional] 
**Scope** | [**IssueFieldOptionScopeBean**](IssueFieldOptionScopeBean.md) | Defines the projects that the option is available in. If the scope is not defined, then the option is available in all projects. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueFieldOptionConfiguration = Initialize-PSJiraIssueFieldOptionConfiguration  -Attributes null `
 -Scope null
```

- Convert the resource to JSON
```powershell
$IssueFieldOptionConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

