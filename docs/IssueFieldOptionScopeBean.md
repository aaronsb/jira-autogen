# IssueFieldOptionScopeBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Global** | [**GlobalScopeBean**](GlobalScopeBean.md) | Defines the behavior of the option within the global context. If this property is set, even if set to an empty object, then the option is available in all projects. | [optional] 
**Projects** | **Int64[]** | DEPRECATED | [optional] 
**Projects2** | [**ProjectScopeBean[]**](ProjectScopeBean.md) | Defines the projects in which the option is available and the behavior of the option within each project. Specify one object per project. The behavior of the option in a project context overrides the behavior in the global context. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueFieldOptionScopeBean = Initialize-PSJiraIssueFieldOptionScopeBean  -Global null `
 -Projects null `
 -Projects2 null
```

- Convert the resource to JSON
```powershell
$IssueFieldOptionScopeBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

