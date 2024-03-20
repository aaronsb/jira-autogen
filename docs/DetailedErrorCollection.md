# DetailedErrorCollection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Details** | [**System.Collections.Hashtable**](AnyType.md) | Map of objects representing additional details for an error | [optional] 
**ErrorMessages** | **String[]** | The list of error messages produced by this operation. For example, &quot;&quot;input parameter &#39;key&#39; must be provided&quot;&quot; | [optional] 
**Errors** | **System.Collections.Hashtable** | The list of errors by parameter returned by the operation. For example,&quot;&quot;projectKey&quot;&quot;: &quot;&quot;Project keys must start with an uppercase letter, followed by one or more uppercase alphanumeric characters.&quot;&quot; | [optional] 

## Examples

- Prepare the resource
```powershell
$DetailedErrorCollection = Initialize-PSJiraDetailedErrorCollection  -Details null `
 -ErrorMessages null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$DetailedErrorCollection | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

