# ContainerForProjectFeatures
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Features** | [**ProjectFeature[]**](ProjectFeature.md) | The project features. | [optional] 

## Examples

- Prepare the resource
```powershell
$ContainerForProjectFeatures = Initialize-PSJiraContainerForProjectFeatures  -Features null
```

- Convert the resource to JSON
```powershell
$ContainerForProjectFeatures | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

