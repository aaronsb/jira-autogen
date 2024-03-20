# IssueTypeScreenSchemeMappingDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeMappings** | [**IssueTypeScreenSchemeMapping[]**](IssueTypeScreenSchemeMapping.md) | The list of issue type to screen scheme mappings. A *default* entry cannot be specified because a default entry is added when an issue type screen scheme is created. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeScreenSchemeMappingDetails = Initialize-PSJiraIssueTypeScreenSchemeMappingDetails  -IssueTypeMappings null
```

- Convert the resource to JSON
```powershell
$IssueTypeScreenSchemeMappingDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

