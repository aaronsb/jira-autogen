# WorkflowLayout
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**X** | **Double** | The x axis location. | [optional] 
**Y** | **Double** | The y axis location. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowLayout = Initialize-PSJiraWorkflowLayout  -X null `
 -Y null
```

- Convert the resource to JSON
```powershell
$WorkflowLayout | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

