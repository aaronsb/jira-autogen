# ApplicationProperty
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedValues** | **String[]** | The allowed values, if applicable. | [optional] 
**DefaultValue** | **String** | The default value of the application property. | [optional] 
**Desc** | **String** | The description of the application property. | [optional] 
**Example** | **String** |  | [optional] 
**Id** | **String** | The ID of the application property. The ID and key are the same. | [optional] 
**Key** | **String** | The key of the application property. The ID and key are the same. | [optional] 
**Name** | **String** | The name of the application property. | [optional] 
**Type** | **String** | The data type of the application property. | [optional] 
**Value** | **String** | The new value. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationProperty = Initialize-PSJiraApplicationProperty  -AllowedValues null `
 -DefaultValue null `
 -Desc null `
 -Example null `
 -Id null `
 -Key null `
 -Name null `
 -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ApplicationProperty | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

