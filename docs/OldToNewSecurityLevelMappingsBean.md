# OldToNewSecurityLevelMappingsBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewLevelId** | **String** | The new issue security level ID. Providing null will clear the assigned old level from issues. | 
**OldLevelId** | **String** | The old issue security level ID. Providing null will remap all issues without any assigned levels. | 

## Examples

- Prepare the resource
```powershell
$OldToNewSecurityLevelMappingsBean = Initialize-PSJiraOldToNewSecurityLevelMappingsBean  -NewLevelId null `
 -OldLevelId null
```

- Convert the resource to JSON
```powershell
$OldToNewSecurityLevelMappingsBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

