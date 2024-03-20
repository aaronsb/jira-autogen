# ContextualConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configuration** | [**AnyType**](.md) | The field configuration. | [optional] 
**FieldContextId** | **String** | The ID of the field context the configuration is associated with. | [readonly] 
**Id** | **String** | The ID of the configuration. | 
**Schema** | [**AnyType**](.md) | The field value schema. | [optional] 

## Examples

- Prepare the resource
```powershell
$ContextualConfiguration = Initialize-PSJiraContextualConfiguration  -Configuration null `
 -FieldContextId null `
 -Id null `
 -Schema null
```

- Convert the resource to JSON
```powershell
$ContextualConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

