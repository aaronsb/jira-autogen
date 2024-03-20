# ProjectInsight
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LastIssueUpdateTime** | **System.DateTime** | The last issue update time. | [optional] [readonly] 
**TotalIssueCount** | **Int64** | Total issue count. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectInsight = Initialize-PSJiraProjectInsight  -LastIssueUpdateTime null `
 -TotalIssueCount null
```

- Convert the resource to JSON
```powershell
$ProjectInsight | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

