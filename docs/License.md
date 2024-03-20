# License
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Applications** | [**LicensedApplication[]**](LicensedApplication.md) | The applications under this license. | [readonly] 

## Examples

- Prepare the resource
```powershell
$License = Initialize-PSJiraLicense  -Applications null
```

- Convert the resource to JSON
```powershell
$License | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

