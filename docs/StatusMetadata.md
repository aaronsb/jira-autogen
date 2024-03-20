# StatusMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Category** | **String** | The category of the status. | [optional] 
**Id** | **String** | The ID of the status. | [optional] 
**Name** | **String** | The name of the status. | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusMetadata = Initialize-PSJiraStatusMetadata  -Category null `
 -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$StatusMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

