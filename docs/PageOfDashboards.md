# PageOfDashboards
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dashboards** | [**Dashboard[]**](Dashboard.md) | List of dashboards. | [optional] [readonly] 
**MaxResults** | **Int32** | The maximum number of results that could be on the page. | [optional] [readonly] 
**Next** | **String** | The URL of the next page of results, if any. | [optional] [readonly] 
**Prev** | **String** | The URL of the previous page of results, if any. | [optional] [readonly] 
**StartAt** | **Int32** | The index of the first item returned on the page. | [optional] [readonly] 
**Total** | **Int32** | The number of results on the page. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PageOfDashboards = Initialize-PSJiraPageOfDashboards  -Dashboards null `
 -MaxResults null `
 -Next null `
 -Prev null `
 -StartAt null `
 -Total null
```

- Convert the resource to JSON
```powershell
$PageOfDashboards | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

