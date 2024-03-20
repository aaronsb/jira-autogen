# PermittedProjects
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Projects** | [**ProjectIdentifierBean[]**](ProjectIdentifierBean.md) | A list of projects. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PermittedProjects = Initialize-PSJiraPermittedProjects  -Projects null
```

- Convert the resource to JSON
```powershell
$PermittedProjects | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

