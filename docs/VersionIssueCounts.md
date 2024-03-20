# VersionIssueCounts
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomFieldUsage** | [**VersionUsageInCustomField[]**](VersionUsageInCustomField.md) | List of custom fields using the version. | [optional] [readonly] 
**IssueCountWithCustomFieldsShowingVersion** | **Int64** | Count of issues where a version custom field is set to the version. | [optional] [readonly] 
**IssuesAffectedCount** | **Int64** | Count of issues where the &#x60;affectedVersion&#x60; is set to the version. | [optional] [readonly] 
**IssuesFixedCount** | **Int64** | Count of issues where the &#x60;fixVersion&#x60; is set to the version. | [optional] [readonly] 
**Self** | **String** | The URL of these count details. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$VersionIssueCounts = Initialize-PSJiraVersionIssueCounts  -CustomFieldUsage null `
 -IssueCountWithCustomFieldsShowingVersion null `
 -IssuesAffectedCount null `
 -IssuesFixedCount null `
 -Self null
```

- Convert the resource to JSON
```powershell
$VersionIssueCounts | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

