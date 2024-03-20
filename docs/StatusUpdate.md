# StatusUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the status. | [optional] 
**Id** | **String** | The ID of the status. | 
**Name** | **String** | The name of the status. | 
**StatusCategory** | **String** | The category of the status. | 

## Examples

- Prepare the resource
```powershell
$StatusUpdate = Initialize-PSJiraStatusUpdate  -Description null `
 -Id null `
 -Name null `
 -StatusCategory null
```

- Convert the resource to JSON
```powershell
$StatusUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

