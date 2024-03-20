# IssueUpdateMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Fields** | [**System.Collections.Hashtable**](FieldMetadata.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueUpdateMetadata = Initialize-PSJiraIssueUpdateMetadata  -Fields null
```

- Convert the resource to JSON
```powershell
$IssueUpdateMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

