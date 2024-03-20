# FieldDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClauseNames** | **String[]** | The names that can be used to reference the field in an advanced search. For more information, see [Advanced searching - fields reference](https://confluence.atlassian.com/x/gwORLQ). | [optional] 
**Custom** | **Boolean** | Whether the field is a custom field. | [optional] 
**Id** | **String** | The ID of the field. | [optional] 
**Key** | **String** | The key of the field. | [optional] 
**Name** | **String** | The name of the field. | [optional] 
**Navigable** | **Boolean** | Whether the field can be used as a column on the issue navigator. | [optional] 
**Orderable** | **Boolean** | Whether the content of the field can be used to order lists. | [optional] 
**Schema** | [**JsonTypeBean**](JsonTypeBean.md) | The data schema for the field. | [optional] 
**Scope** | [**Scope**](Scope.md) | The scope of the field. | [optional] 
**Searchable** | **Boolean** | Whether the content of the field can be searched. | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldDetails = Initialize-PSJiraFieldDetails  -ClauseNames null `
 -Custom null `
 -Id null `
 -Key null `
 -Name null `
 -Navigable null `
 -Orderable null `
 -Schema null `
 -Scope null `
 -Searchable null
```

- Convert the resource to JSON
```powershell
$FieldDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

