# AnnouncementBannerConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HashId** | **String** | Hash of the banner data. The client detects updates by comparing hash IDs. | [optional] [readonly] 
**IsDismissible** | **Boolean** | Flag indicating if the announcement banner can be dismissed by the user. | [optional] [readonly] 
**IsEnabled** | **Boolean** | Flag indicating if the announcement banner is enabled or not. | [optional] [readonly] 
**Message** | **String** | The text on the announcement banner. | [optional] [readonly] 
**Visibility** | **String** | Visibility of the announcement banner. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AnnouncementBannerConfiguration = Initialize-PSJiraAnnouncementBannerConfiguration  -HashId null `
 -IsDismissible null `
 -IsEnabled null `
 -Message null `
 -Visibility null
```

- Convert the resource to JSON
```powershell
$AnnouncementBannerConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

