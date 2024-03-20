# ComponentJsonBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ari** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Metadata** | **System.Collections.Hashtable** |  | [optional] 
**Name** | **String** |  | [optional] 
**Self** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ComponentJsonBean = Initialize-PSJiraComponentJsonBean  -Ari null `
 -Description null `
 -Id null `
 -Metadata null `
 -Name null `
 -Self null
```

- Convert the resource to JSON
```powershell
$ComponentJsonBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

