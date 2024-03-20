# LicenseMetric
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The key of a specific license metric. | [optional] 
**Value** | **String** | The calculated value of a licence metric linked to the key. An example licence metric is the approximate number of user accounts. | [optional] 

## Examples

- Prepare the resource
```powershell
$LicenseMetric = Initialize-PSJiraLicenseMetric  -Key null `
 -Value null
```

- Convert the resource to JSON
```powershell
$LicenseMetric | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

