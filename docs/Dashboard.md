# Dashboard
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutomaticRefreshMs** | **Int32** | The automatic refresh interval for the dashboard in milliseconds. | [optional] [readonly] 
**Description** | **String** |  | [optional] 
**EditPermissions** | [**SharePermission[]**](SharePermission.md) | The details of any edit share permissions for the dashboard. | [optional] [readonly] 
**Id** | **String** | The ID of the dashboard. | [optional] [readonly] 
**IsFavourite** | **Boolean** | Whether the dashboard is selected as a favorite by the user. | [optional] [readonly] 
**IsWritable** | **Boolean** | Whether the current user has permission to edit the dashboard. | [optional] [readonly] 
**Name** | **String** | The name of the dashboard. | [optional] [readonly] 
**Owner** | [**DashboardOwner**](DashboardOwner.md) |  | [optional] 
**Popularity** | **Int64** | The number of users who have this dashboard as a favorite. | [optional] [readonly] 
**Rank** | **Int32** | The rank of this dashboard. | [optional] [readonly] 
**Self** | **String** | The URL of these dashboard details. | [optional] [readonly] 
**SharePermissions** | [**SharePermission[]**](SharePermission.md) | The details of any view share permissions for the dashboard. | [optional] [readonly] 
**SystemDashboard** | **Boolean** | Whether the current dashboard is system dashboard. | [optional] [readonly] 
**View** | **String** | The URL of the dashboard. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Dashboard = Initialize-PSJiraDashboard  -AutomaticRefreshMs null `
 -Description null `
 -EditPermissions null `
 -Id null `
 -IsFavourite null `
 -IsWritable null `
 -Name null `
 -Owner null `
 -Popularity null `
 -Rank null `
 -Self null `
 -SharePermissions null `
 -SystemDashboard null `
 -View null
```

- Convert the resource to JSON
```powershell
$Dashboard | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

