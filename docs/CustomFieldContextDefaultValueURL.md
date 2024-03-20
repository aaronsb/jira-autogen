# CustomFieldContextDefaultValueURL
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**Type** | **String** |  | 
**Url** | **String** | The default URL. | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueURL = Initialize-PSJiraCustomFieldContextDefaultValueURL  -ContextId null `
 -Type null `
 -Url null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueURL | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

