# AssociatedItemBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the associated record. | [optional] [readonly] 
**Name** | **String** | The name of the associated record. | [optional] [readonly] 
**ParentId** | **String** | The ID of the associated parent record. | [optional] [readonly] 
**ParentName** | **String** | The name of the associated parent record. | [optional] [readonly] 
**TypeName** | **String** | The type of the associated record. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AssociatedItemBean = Initialize-PSJiraAssociatedItemBean  -Id null `
 -Name null `
 -ParentId null `
 -ParentName null `
 -TypeName null
```

- Convert the resource to JSON
```powershell
$AssociatedItemBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

