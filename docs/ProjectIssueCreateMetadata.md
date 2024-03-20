# ProjectIssueCreateMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvatarUrls** | [**ProjectIssueCreateMetadataAvatarUrls**](ProjectIssueCreateMetadataAvatarUrls.md) |  | [optional] 
**Expand** | **String** | Expand options that include additional project issue create metadata details in the response. | [optional] [readonly] 
**Id** | **String** | The ID of the project. | [optional] [readonly] 
**Issuetypes** | [**IssueTypeIssueCreateMetadata[]**](IssueTypeIssueCreateMetadata.md) | List of the issue types supported by the project. | [optional] [readonly] 
**Key** | **String** | The key of the project. | [optional] [readonly] 
**Name** | **String** | The name of the project. | [optional] [readonly] 
**Self** | **String** | The URL of the project. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectIssueCreateMetadata = Initialize-PSJiraProjectIssueCreateMetadata  -AvatarUrls null `
 -Expand null `
 -Id null `
 -Issuetypes null `
 -Key null `
 -Name null `
 -Self null
```

- Convert the resource to JSON
```powershell
$ProjectIssueCreateMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

