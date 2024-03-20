# MoveFieldBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**After** | **String** | The ID of the screen tab field after which to place the moved screen tab field. Required if &#x60;position&#x60; isn&#39;t provided. | [optional] 
**Position** | **String** | The named position to which the screen tab field should be moved. Required if &#x60;after&#x60; isn&#39;t provided. | [optional] 

## Examples

- Prepare the resource
```powershell
$MoveFieldBean = Initialize-PSJiraMoveFieldBean  -After null `
 -Position null
```

- Convert the resource to JSON
```powershell
$MoveFieldBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

