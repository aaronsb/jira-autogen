# JqlFunctionPrecomputationUpdateBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **String** | The error message to be displayed to the user if the given function clause is no longer valid during recalculation of the precomputation. | [optional] 
**Id** | **String** | The id of the precomputation to update. | 
**Value** | **String** | The new value of the precomputation. | [optional] 

## Examples

- Prepare the resource
```powershell
$JqlFunctionPrecomputationUpdateBean = Initialize-PSJiraJqlFunctionPrecomputationUpdateBean  -VarError null `
 -Id null `
 -Value null
```

- Convert the resource to JSON
```powershell
$JqlFunctionPrecomputationUpdateBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

