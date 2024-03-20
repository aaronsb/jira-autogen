# CustomFieldContextDefaultValueCascadingOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CascadingOptionId** | **String** | The ID of the default cascading option. | [optional] 
**ContextId** | **String** | The ID of the context. | 
**OptionId** | **String** | The ID of the default option. | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueCascadingOption = Initialize-PSJiraCustomFieldContextDefaultValueCascadingOption  -CascadingOptionId null `
 -ContextId null `
 -OptionId null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueCascadingOption | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

