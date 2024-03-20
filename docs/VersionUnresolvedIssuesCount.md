# VersionUnresolvedIssuesCount
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssuesCount** | **Int64** | Count of issues. | [optional] [readonly] 
**IssuesUnresolvedCount** | **Int64** | Count of unresolved issues. | [optional] [readonly] 
**Self** | **String** | The URL of these count details. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$VersionUnresolvedIssuesCount = Initialize-PSJiraVersionUnresolvedIssuesCount  -IssuesCount null `
 -IssuesUnresolvedCount null `
 -Self null
```

- Convert the resource to JSON
```powershell
$VersionUnresolvedIssuesCount | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

