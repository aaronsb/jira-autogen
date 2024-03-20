# StatusReferenceAndPort
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Port** | **Int32** | The port this transition uses to connect to this status. | [optional] 
**StatusReference** | **String** | The reference of this status. | 

## Examples

- Prepare the resource
```powershell
$StatusReferenceAndPort = Initialize-PSJiraStatusReferenceAndPort  -Port null `
 -StatusReference null
```

- Convert the resource to JSON
```powershell
$StatusReferenceAndPort | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

