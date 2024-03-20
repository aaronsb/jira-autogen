# ResolutionJsonBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Default** | **Boolean** |  | [optional] 
**Description** | **String** |  | [optional] 
**IconUrl** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Self** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResolutionJsonBean = Initialize-PSJiraResolutionJsonBean  -Default null `
 -Description null `
 -IconUrl null `
 -Id null `
 -Name null `
 -Self null
```

- Convert the resource to JSON
```powershell
$ResolutionJsonBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

