# ServerInformationServerTimeZone
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** |  | [optional] 
**Dstsavings** | **Int32** |  | [optional] 
**Id** | **String** |  | [optional] 
**RawOffset** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerInformationServerTimeZone = Initialize-PSJiraServerInformationServerTimeZone  -DisplayName null `
 -Dstsavings null `
 -Id null `
 -RawOffset null
```

- Convert the resource to JSON
```powershell
$ServerInformationServerTimeZone | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

