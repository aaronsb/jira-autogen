# ProjectDataPolicies
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectDataPolicies** | [**ProjectWithDataPolicy[]**](ProjectWithDataPolicy.md) | List of projects with data policies. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectDataPolicies = Initialize-PSJiraProjectDataPolicies  -ProjectDataPolicies null
```

- Convert the resource to JSON
```powershell
$ProjectDataPolicies | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

