# FilterDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApproximateLastUsed** | **System.DateTime** | \[Experimental\] Approximate last used time. Returns the date and time when the filter was last used. Returns &#x60;null&#x60; if the filter hasn&#39;t been used after tracking was enabled. For performance reasons, timestamps aren&#39;t updated in real time and therefore may not be exactly accurate. | [optional] [readonly] 
**Description** | **String** | The description of the filter. | [optional] 
**EditPermissions** | [**SharePermission[]**](SharePermission.md) | The groups and projects that can edit the filter. This can be specified when updating a filter, but not when creating a filter. | [optional] 
**Expand** | **String** | Expand options that include additional filter details in the response. | [optional] [readonly] 
**Favourite** | **Boolean** | Whether the filter is selected as a favorite by any users, not including the filter owner. | [optional] [readonly] 
**FavouritedCount** | **Int64** | The count of how many users have selected this filter as a favorite, including the filter owner. | [optional] [readonly] 
**Id** | **String** | The unique identifier for the filter. | [optional] [readonly] 
**Jql** | **String** | The JQL query for the filter. For example, *project &#x3D; SSP AND issuetype &#x3D; Bug*. | [optional] [readonly] 
**Name** | **String** | The name of the filter. | 
**Owner** | [**FilterDetailsOwner**](FilterDetailsOwner.md) |  | [optional] 
**SearchUrl** | **String** | A URL to view the filter results in Jira, using the [Search for issues using JQL](#api-rest-api-3-filter-search-get) operation with the filter&#39;s JQL string to return the filter results. For example, *https://your-domain.atlassian.net/rest/api/3/search?jql&#x3D;project+%3D+SSP+AND+issuetype+%3D+Bug*. | [optional] [readonly] 
**Self** | **String** | The URL of the filter. | [optional] [readonly] 
**SharePermissions** | [**SharePermission[]**](SharePermission.md) | The groups and projects that the filter is shared with. This can be specified when updating a filter, but not when creating a filter. | [optional] 
**Subscriptions** | [**FilterSubscription[]**](FilterSubscription.md) | The users that are subscribed to the filter. | [optional] [readonly] 
**ViewUrl** | **String** | A URL to view the filter results in Jira, using the ID of the filter. For example, *https://your-domain.atlassian.net/issues/?filter&#x3D;10100*. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$FilterDetails = Initialize-PSJiraFilterDetails  -ApproximateLastUsed null `
 -Description null `
 -EditPermissions null `
 -Expand null `
 -Favourite null `
 -FavouritedCount null `
 -Id null `
 -Jql null `
 -Name null `
 -Owner null `
 -SearchUrl null `
 -Self null `
 -SharePermissions null `
 -Subscriptions null `
 -ViewUrl null
```

- Convert the resource to JSON
```powershell
$FilterDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

