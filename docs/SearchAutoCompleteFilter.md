# SearchAutoCompleteFilter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IncludeCollapsedFields** | **Boolean** | Include collapsed fields for fields that have non-unique names. | [optional] [default to $false]
**ProjectIds** | **Int64[]** | List of project IDs used to filter the visible field details returned. | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchAutoCompleteFilter = Initialize-PSJiraSearchAutoCompleteFilter  -IncludeCollapsedFields null `
 -ProjectIds null
```

- Convert the resource to JSON
```powershell
$SearchAutoCompleteFilter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

