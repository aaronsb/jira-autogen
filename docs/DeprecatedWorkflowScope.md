# DeprecatedWorkflowScope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Project** | [**ScopeProject**](ScopeProject.md) |  | [optional] 
**Type** | **String** | The type of scope. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$DeprecatedWorkflowScope = Initialize-PSJiraDeprecatedWorkflowScope  -Project null `
 -Type null
```

- Convert the resource to JSON
```powershell
$DeprecatedWorkflowScope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

