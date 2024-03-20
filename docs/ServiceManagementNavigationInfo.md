# ServiceManagementNavigationInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QueueCategory** | **String** |  | [optional] 
**QueueId** | **Int64** |  | [optional] 
**QueueName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceManagementNavigationInfo = Initialize-PSJiraServiceManagementNavigationInfo  -QueueCategory null `
 -QueueId null `
 -QueueName null
```

- Convert the resource to JSON
```powershell
$ServiceManagementNavigationInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

