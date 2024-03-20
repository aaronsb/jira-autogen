# IssueCreateMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expand** | **String** | Expand options that include additional project details in the response. | [optional] [readonly] 
**Projects** | [**ProjectIssueCreateMetadata[]**](ProjectIssueCreateMetadata.md) | List of projects and their issue creation metadata. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueCreateMetadata = Initialize-PSJiraIssueCreateMetadata  -Expand null `
 -Projects null
```

- Convert the resource to JSON
```powershell
$IssueCreateMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

