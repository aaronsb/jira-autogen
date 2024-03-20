# SecurityLevelMember
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Holder** | [**SecurityLevelMemberHolder**](SecurityLevelMemberHolder.md) |  | 
**Id** | **String** | The ID of the issue security level member. | [readonly] 
**IssueSecurityLevelId** | **String** | The ID of the issue security level. | [readonly] 
**IssueSecuritySchemeId** | **String** | The ID of the issue security scheme. | [readonly] 
**Managed** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SecurityLevelMember = Initialize-PSJiraSecurityLevelMember  -Holder null `
 -Id null `
 -IssueSecurityLevelId null `
 -IssueSecuritySchemeId null `
 -Managed null
```

- Convert the resource to JSON
```powershell
$SecurityLevelMember | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

