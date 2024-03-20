# SecuritySchemeMembersRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Members** | [**SecuritySchemeLevelMemberBean[]**](SecuritySchemeLevelMemberBean.md) | The list of level members which should be added to the issue security scheme level. | [optional] 

## Examples

- Prepare the resource
```powershell
$SecuritySchemeMembersRequest = Initialize-PSJiraSecuritySchemeMembersRequest  -Members null
```

- Convert the resource to JSON
```powershell
$SecuritySchemeMembersRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

