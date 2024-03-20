# TransitionScreenDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the screen. | 
**Name** | **String** | The name of the screen. | [optional] 

## Examples

- Prepare the resource
```powershell
$TransitionScreenDetails = Initialize-PSJiraTransitionScreenDetails  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$TransitionScreenDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

