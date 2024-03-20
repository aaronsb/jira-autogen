# ProjectIssueTypeMappings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Mappings** | [**ProjectIssueTypeMapping[]**](ProjectIssueTypeMapping.md) | The project and issue type mappings. | 

## Examples

- Prepare the resource
```powershell
$ProjectIssueTypeMappings = Initialize-PSJiraProjectIssueTypeMappings  -Mappings null
```

- Convert the resource to JSON
```powershell
$ProjectIssueTypeMappings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

