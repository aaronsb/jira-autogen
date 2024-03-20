# AutoCompleteSuggestions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**AutoCompleteSuggestion[]**](AutoCompleteSuggestion.md) | The list of suggested item. | [optional] 

## Examples

- Prepare the resource
```powershell
$AutoCompleteSuggestions = Initialize-PSJiraAutoCompleteSuggestions  -Results null
```

- Convert the resource to JSON
```powershell
$AutoCompleteSuggestions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

