# IssueTypeIssueCreateMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvatarId** | **Int64** | The ID of the issue type&#39;s avatar. | [optional] [readonly] 
**Description** | **String** | The description of the issue type. | [optional] [readonly] 
**EntityId** | **String** | Unique ID for next-gen projects. | [optional] [readonly] 
**Expand** | **String** | Expand options that include additional issue type metadata details in the response. | [optional] [readonly] 
**Fields** | [**System.Collections.Hashtable**](FieldMetadata.md) | List of the fields available when creating an issue for the issue type. | [optional] [readonly] 
**HierarchyLevel** | **Int32** | Hierarchy level of the issue type. | [optional] [readonly] 
**IconUrl** | **String** | The URL of the issue type&#39;s avatar. | [optional] [readonly] 
**Id** | **String** | The ID of the issue type. | [optional] [readonly] 
**Name** | **String** | The name of the issue type. | [optional] [readonly] 
**Scope** | [**IssueTypeDetailsScope**](IssueTypeDetailsScope.md) |  | [optional] 
**Self** | **String** | The URL of these issue type details. | [optional] [readonly] 
**Subtask** | **Boolean** | Whether this issue type is used to create subtasks. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueTypeIssueCreateMetadata = Initialize-PSJiraIssueTypeIssueCreateMetadata  -AvatarId null `
 -Description null `
 -EntityId null `
 -Expand null `
 -Fields null `
 -HierarchyLevel null `
 -IconUrl null `
 -Id null `
 -Name null `
 -Scope null `
 -Self null `
 -Subtask null
```

- Convert the resource to JSON
```powershell
$IssueTypeIssueCreateMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

