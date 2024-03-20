# IssueSecurityLevelMember
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Holder** | [**PermissionHolder**](PermissionHolder.md) | The user or group being granted the permission. It consists of a &#x60;type&#x60; and a type-dependent &#x60;parameter&#x60;. See [Holder object](../api-group-permission-schemes/#holder-object) in *Get all permission schemes* for more information. | 
**Id** | **Int64** | The ID of the issue security level member. | 
**IssueSecurityLevelId** | **Int64** | The ID of the issue security level. | 
**Managed** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueSecurityLevelMember = Initialize-PSJiraIssueSecurityLevelMember  -Holder null `
 -Id null `
 -IssueSecurityLevelId null `
 -Managed null
```

- Convert the resource to JSON
```powershell
$IssueSecurityLevelMember | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

