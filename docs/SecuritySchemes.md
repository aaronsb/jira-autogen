# SecuritySchemes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueSecuritySchemes** | [**SecurityScheme[]**](SecurityScheme.md) | List of security schemes. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SecuritySchemes = Initialize-PSJiraSecuritySchemes  -IssueSecuritySchemes null
```

- Convert the resource to JSON
```powershell
$SecuritySchemes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

