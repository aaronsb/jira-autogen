# IssueEntityProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntitiesIds** | **Int64[]** | A list of entity property IDs. | [optional] 
**Properties** | [**System.Collections.Hashtable**](JsonNode.md) | A list of entity property keys and values. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueEntityProperties = Initialize-PSJiraIssueEntityProperties  -EntitiesIds null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$IssueEntityProperties | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

