# VersionRelatedWork
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Category** | **String** | The category of the related work | [readonly] 
**IssueId** | **Int64** | The title of the related work | [optional] [readonly] 
**RelatedWorkId** | **String** | The id of the related work. For the native release note related work item, this will be null, and Rest API does not support updating it. | [optional] [readonly] 
**Title** | **String** | The title of the related work | [optional] [readonly] 
**Url** | **String** | The URL of the related work | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$VersionRelatedWork = Initialize-PSJiraVersionRelatedWork  -Category null `
 -IssueId null `
 -RelatedWorkId null `
 -Title null `
 -Url null
```

- Convert the resource to JSON
```powershell
$VersionRelatedWork | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

