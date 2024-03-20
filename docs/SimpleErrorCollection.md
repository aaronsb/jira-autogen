# SimpleErrorCollection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorMessages** | **String[]** | The list of error messages produced by this operation. For example, &quot;&quot;input parameter &#39;key&#39; must be provided&quot;&quot; | [optional] 
**Errors** | **System.Collections.Hashtable** | The list of errors by parameter returned by the operation. For example,&quot;&quot;projectKey&quot;&quot;: &quot;&quot;Project keys must start with an uppercase letter, followed by one or more uppercase alphanumeric characters.&quot;&quot; | [optional] 
**HttpStatusCode** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SimpleErrorCollection = Initialize-PSJiraSimpleErrorCollection  -ErrorMessages null `
 -Errors null `
 -HttpStatusCode null
```

- Convert the resource to JSON
```powershell
$SimpleErrorCollection | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

