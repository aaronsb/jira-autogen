# UpdatedProjectCategory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The name of the project category. | [optional] [readonly] 
**Id** | **String** | The ID of the project category. | [optional] [readonly] 
**Name** | **String** | The description of the project category. | [optional] [readonly] 
**Self** | **String** | The URL of the project category. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$UpdatedProjectCategory = Initialize-PSJiraUpdatedProjectCategory  -Description null `
 -Id null `
 -Name null `
 -Self null
```

- Convert the resource to JSON
```powershell
$UpdatedProjectCategory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

