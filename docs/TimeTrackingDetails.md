# TimeTrackingDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OriginalEstimate** | **String** | The original estimate of time needed for this issue in readable format. | [optional] [readonly] 
**OriginalEstimateSeconds** | **Int64** | The original estimate of time needed for this issue in seconds. | [optional] [readonly] 
**RemainingEstimate** | **String** | The remaining estimate of time needed for this issue in readable format. | [optional] [readonly] 
**RemainingEstimateSeconds** | **Int64** | The remaining estimate of time needed for this issue in seconds. | [optional] [readonly] 
**TimeSpent** | **String** | Time worked on this issue in readable format. | [optional] [readonly] 
**TimeSpentSeconds** | **Int64** | Time worked on this issue in seconds. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$TimeTrackingDetails = Initialize-PSJiraTimeTrackingDetails  -OriginalEstimate null `
 -OriginalEstimateSeconds null `
 -RemainingEstimate null `
 -RemainingEstimateSeconds null `
 -TimeSpent null `
 -TimeSpentSeconds null
```

- Convert the resource to JSON
```powershell
$TimeTrackingDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

