# NotificationSchemeAndProjectMappingJsonBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NotificationSchemeId** | **String** |  | [optional] 
**ProjectId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationSchemeAndProjectMappingJsonBean = Initialize-PSJiraNotificationSchemeAndProjectMappingJsonBean  -NotificationSchemeId null `
 -ProjectId null
```

- Convert the resource to JSON
```powershell
$NotificationSchemeAndProjectMappingJsonBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

