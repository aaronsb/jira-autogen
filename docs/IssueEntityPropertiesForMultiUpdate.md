# IssueEntityPropertiesForMultiUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueID** | **Int64** | The ID of the issue. | [optional] 
**Properties** | [**System.Collections.Hashtable**](JsonNode.md) | Entity properties to set on the issue. The maximum length of an issue property value is 32768 characters. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueEntityPropertiesForMultiUpdate = Initialize-PSJiraIssueEntityPropertiesForMultiUpdate  -IssueID null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$IssueEntityPropertiesForMultiUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

