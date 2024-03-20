# StatusLayoutUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Layout** | [**WorkflowLayout**](WorkflowLayout.md) |  | [optional] 
**Properties** | **System.Collections.Hashtable** | The properties for this status layout. | 
**StatusReference** | **String** | A unique ID which the status will use to refer to this layout configuration. | 

## Examples

- Prepare the resource
```powershell
$StatusLayoutUpdate = Initialize-PSJiraStatusLayoutUpdate  -Layout null `
 -Properties null `
 -StatusReference null
```

- Convert the resource to JSON
```powershell
$StatusLayoutUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

