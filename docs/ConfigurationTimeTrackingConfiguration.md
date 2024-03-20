# ConfigurationTimeTrackingConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultUnit** | **String** | The default unit of time applied to logged time. | 
**TimeFormat** | **String** | The format that will appear on an issue&#39;s *Time Spent* field. | 
**WorkingDaysPerWeek** | **Double** | The number of days in a working week. | 
**WorkingHoursPerDay** | **Double** | The number of hours in a working day. | 

## Examples

- Prepare the resource
```powershell
$ConfigurationTimeTrackingConfiguration = Initialize-PSJiraConfigurationTimeTrackingConfiguration  -DefaultUnit null `
 -TimeFormat null `
 -WorkingDaysPerWeek null `
 -WorkingHoursPerDay null
```

- Convert the resource to JSON
```powershell
$ConfigurationTimeTrackingConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

