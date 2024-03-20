# ProjectScopeBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | **String[]** | Defines the behavior of the option in the project.If notSelectable is set, the option cannot be set as the field&#39;s value. This is useful for archiving an option that has previously been selected but shouldn&#39;t be used anymore.If defaultValue is set, the option is selected by default. | [optional] 
**Id** | **Int64** | The ID of the project that the option&#39;s behavior applies to. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectScopeBean = Initialize-PSJiraProjectScopeBean  -Attributes null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ProjectScopeBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

