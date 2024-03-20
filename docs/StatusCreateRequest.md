# StatusCreateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scope** | [**StatusScope**](StatusScope.md) |  | 
**Statuses** | [**StatusCreate[]**](StatusCreate.md) | Details of the statuses being created. | 

## Examples

- Prepare the resource
```powershell
$StatusCreateRequest = Initialize-PSJiraStatusCreateRequest  -Scope null `
 -Statuses null
```

- Convert the resource to JSON
```powershell
$StatusCreateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

