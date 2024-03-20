# VersionIssuesStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Done** | **Int64** | Count of issues with status *done*. | [optional] [readonly] 
**InProgress** | **Int64** | Count of issues with status *in progress*. | [optional] [readonly] 
**ToDo** | **Int64** | Count of issues with status *to do*. | [optional] [readonly] 
**Unmapped** | **Int64** | Count of issues with a status other than *to do*, *in progress*, and *done*. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$VersionIssuesStatus = Initialize-PSJiraVersionIssuesStatus  -Done null `
 -InProgress null `
 -ToDo null `
 -Unmapped null
```

- Convert the resource to JSON
```powershell
$VersionIssuesStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

