# FoundGroups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Groups** | [**FoundGroup[]**](FoundGroup.md) |  | [optional] 
**Header** | **String** | Header text indicating the number of groups in the response and the total number of groups found in the search. | [optional] 
**Total** | **Int32** | The total number of groups found in the search. | [optional] 

## Examples

- Prepare the resource
```powershell
$FoundGroups = Initialize-PSJiraFoundGroups  -Groups null `
 -Header null `
 -Total null
```

- Convert the resource to JSON
```powershell
$FoundGroups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

