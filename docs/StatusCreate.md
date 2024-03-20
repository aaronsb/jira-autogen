# StatusCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the status. | [optional] 
**Name** | **String** | The name of the status. | 
**StatusCategory** | **String** | The category of the status. | 

## Examples

- Prepare the resource
```powershell
$StatusCreate = Initialize-PSJiraStatusCreate  -Description null `
 -Name null `
 -StatusCategory null
```

- Convert the resource to JSON
```powershell
$StatusCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

