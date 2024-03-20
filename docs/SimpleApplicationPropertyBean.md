# SimpleApplicationPropertyBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the application property. | [optional] 
**Value** | **String** | The new value. | [optional] 

## Examples

- Prepare the resource
```powershell
$SimpleApplicationPropertyBean = Initialize-PSJiraSimpleApplicationPropertyBean  -Id null `
 -Value null
```

- Convert the resource to JSON
```powershell
$SimpleApplicationPropertyBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

