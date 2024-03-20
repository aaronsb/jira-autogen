# IssueBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Changelog** | [**IssueBeanChangelog**](IssueBeanChangelog.md) |  | [optional] 
**Editmeta** | [**IssueBeanEditmeta**](IssueBeanEditmeta.md) |  | [optional] 
**Expand** | **String** | Expand options that include additional issue details in the response. | [optional] [readonly] 
**Fields** | [**System.Collections.Hashtable**](AnyType.md) |  | [optional] 
**FieldsToInclude** | [**IncludedFields**](IncludedFields.md) |  | [optional] 
**Id** | **String** | The ID of the issue. | [optional] [readonly] 
**Key** | **String** | The key of the issue. | [optional] [readonly] 
**Names** | **System.Collections.Hashtable** | The ID and name of each field present on the issue. | [optional] [readonly] 
**Operations** | [**IssueBeanOperations**](IssueBeanOperations.md) |  | [optional] 
**Properties** | [**System.Collections.Hashtable**](AnyType.md) | Details of the issue properties identified in the request. | [optional] [readonly] 
**RenderedFields** | [**System.Collections.Hashtable**](AnyType.md) | The rendered value of each field present on the issue. | [optional] [readonly] 
**Schema** | [**System.Collections.Hashtable**](JsonTypeBean.md) | The schema describing each field present on the issue. | [optional] [readonly] 
**Self** | **String** | The URL of the issue details. | [optional] [readonly] 
**Transitions** | [**IssueTransition[]**](IssueTransition.md) | The transitions that can be performed on the issue. | [optional] [readonly] 
**VersionedRepresentations** | [**System.Collections.Hashtable**](Map.md) | The versions of each field on the issue. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueBean = Initialize-PSJiraIssueBean  -Changelog null `
 -Editmeta null `
 -Expand null `
 -Fields null `
 -FieldsToInclude null `
 -Id null `
 -Key null `
 -Names null `
 -Operations null `
 -Properties null `
 -RenderedFields null `
 -Schema null `
 -Self null `
 -Transitions null `
 -VersionedRepresentations null
```

- Convert the resource to JSON
```powershell
$IssueBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

