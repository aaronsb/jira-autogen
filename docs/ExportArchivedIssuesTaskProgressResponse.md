# ExportArchivedIssuesTaskProgressResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FileUrl** | **String** |  | [optional] 
**Payload** | **String** |  | [optional] 
**Progress** | **Int64** |  | [optional] 
**Status** | **String** |  | [optional] 
**SubmittedTime** | **System.DateTime** |  | [optional] 
**TaskId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportArchivedIssuesTaskProgressResponse = Initialize-PSJiraExportArchivedIssuesTaskProgressResponse  -FileUrl null `
 -Payload null `
 -Progress null `
 -Status null `
 -SubmittedTime null `
 -TaskId null
```

- Convert the resource to JSON
```powershell
$ExportArchivedIssuesTaskProgressResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

