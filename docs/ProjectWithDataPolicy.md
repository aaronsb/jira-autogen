# ProjectWithDataPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataPolicy** | [**ProjectWithDataPolicyDataPolicy**](ProjectWithDataPolicyDataPolicy.md) |  | [optional] 
**Id** | **Int64** | The project ID. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectWithDataPolicy = Initialize-PSJiraProjectWithDataPolicy  -DataPolicy null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ProjectWithDataPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

