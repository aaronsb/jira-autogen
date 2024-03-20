# IssueFieldOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Config** | [**IssueFieldOptionConfiguration**](IssueFieldOptionConfiguration.md) |  | [optional] 
**Id** | **Int64** | The unique identifier for the option. This is only unique within the select field&#39;s set of options. | 
**Properties** | [**System.Collections.Hashtable**](AnyType.md) | The properties of the object, as arbitrary key-value pairs. These properties can be searched using JQL, if the extractions (see [Issue Field Option Property Index](https://developer.atlassian.com/cloud/jira/platform/modules/issue-field-option-property-index/)) are defined in the descriptor for the issue field module. | [optional] 
**Value** | **String** | The option&#39;s name, which is displayed in Jira. | 

## Examples

- Prepare the resource
```powershell
$IssueFieldOption = Initialize-PSJiraIssueFieldOption  -Config null `
 -Id null `
 -Properties null `
 -Value null
```

- Convert the resource to JSON
```powershell
$IssueFieldOption | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

