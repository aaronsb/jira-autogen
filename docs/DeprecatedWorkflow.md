# DeprecatedWorkflow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Default** | **Boolean** |  | [optional] 
**Description** | **String** | The description of the workflow. | [optional] [readonly] 
**LastModifiedDate** | **String** | The datetime the workflow was last modified. | [optional] [readonly] 
**LastModifiedUser** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [readonly] 
**LastModifiedUserAccountId** | **String** | The account ID of the user that last modified the workflow. | [optional] [readonly] 
**Name** | **String** | The name of the workflow. | [optional] [readonly] 
**Scope** | [**DeprecatedWorkflowScope**](DeprecatedWorkflowScope.md) |  | [optional] 
**Steps** | **Int32** | The number of steps included in the workflow. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$DeprecatedWorkflow = Initialize-PSJiraDeprecatedWorkflow  -Default null `
 -Description null `
 -LastModifiedDate null `
 -LastModifiedUser null `
 -LastModifiedUserAccountId null `
 -Name null `
 -Scope null `
 -Steps null
```

- Convert the resource to JSON
```powershell
$DeprecatedWorkflow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

