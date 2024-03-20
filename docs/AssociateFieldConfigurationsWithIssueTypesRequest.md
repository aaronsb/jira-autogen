# AssociateFieldConfigurationsWithIssueTypesRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Mappings** | [**FieldConfigurationToIssueTypeMapping[]**](FieldConfigurationToIssueTypeMapping.md) | Field configuration to issue type mappings. | 

## Examples

- Prepare the resource
```powershell
$AssociateFieldConfigurationsWithIssueTypesRequest = Initialize-PSJiraAssociateFieldConfigurationsWithIssueTypesRequest  -Mappings null
```

- Convert the resource to JSON
```powershell
$AssociateFieldConfigurationsWithIssueTypesRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

