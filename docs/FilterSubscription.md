# FilterSubscription
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Group** | [**FilterSubscriptionGroup**](FilterSubscriptionGroup.md) |  | [optional] 
**Id** | **Int64** | The ID of the filter subscription. | [optional] [readonly] 
**User** | [**FilterSubscriptionUser**](FilterSubscriptionUser.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FilterSubscription = Initialize-PSJiraFilterSubscription  -Group null `
 -Id null `
 -User null
```

- Convert the resource to JSON
```powershell
$FilterSubscription | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

