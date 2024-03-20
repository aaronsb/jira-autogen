# VersionMoveBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**After** | **String** | The URL (self link) of the version after which to place the moved version. Cannot be used with &#x60;position&#x60;. | [optional] 
**Position** | **String** | An absolute position in which to place the moved version. Cannot be used with &#x60;after&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$VersionMoveBean = Initialize-PSJiraVersionMoveBean  -After null `
 -Position null
```

- Convert the resource to JSON
```powershell
$VersionMoveBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

