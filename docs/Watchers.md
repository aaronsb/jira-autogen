# Watchers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsWatching** | **Boolean** | Whether the calling user is watching this issue. | [optional] [readonly] 
**Self** | **String** | The URL of these issue watcher details. | [optional] [readonly] 
**WatchCount** | **Int32** | The number of users watching this issue. | [optional] [readonly] 
**Watchers** | [**UserDetails[]**](UserDetails.md) | Details of the users watching this issue. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Watchers = Initialize-PSJiraWatchers  -IsWatching null `
 -Self null `
 -WatchCount null `
 -Watchers null
```

- Convert the resource to JSON
```powershell
$Watchers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

