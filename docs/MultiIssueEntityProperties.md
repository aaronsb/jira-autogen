# MultiIssueEntityProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issues** | [**IssueEntityPropertiesForMultiUpdate[]**](IssueEntityPropertiesForMultiUpdate.md) | A list of issue IDs and their respective properties. | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiIssueEntityProperties = Initialize-PSJiraMultiIssueEntityProperties  -Issues null
```

- Convert the resource to JSON
```powershell
$MultiIssueEntityProperties | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

