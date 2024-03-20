# ProjectWithDataPolicyDataPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AnyContentBlocked** | **Boolean** | Whether the project contains any content inaccessible to the requesting application. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectWithDataPolicyDataPolicy = Initialize-PSJiraProjectWithDataPolicyDataPolicy  -AnyContentBlocked null
```

- Convert the resource to JSON
```powershell
$ProjectWithDataPolicyDataPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

