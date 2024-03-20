# IssueUpdateDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Fields** | [**System.Collections.Hashtable**](AnyType.md) | List of issue screen fields to update, specifying the sub-field to update and its value for each field. This field provides a straightforward option when setting a sub-field. When multiple sub-fields or other operations are required, use &#x60;update&#x60;. Fields included in here cannot be included in &#x60;update&#x60;. | [optional] 
**HistoryMetadata** | [**HistoryMetadata**](HistoryMetadata.md) | Additional issue history details. | [optional] 
**Properties** | [**EntityProperty[]**](EntityProperty.md) | Details of issue properties to be add or update. | [optional] 
**Transition** | [**IssueTransition**](IssueTransition.md) | Details of a transition. Required when performing a transition, optional when creating or editing an issue. | [optional] 
**Update** | [**System.Collections.Hashtable**](Array.md) | A Map containing the field field name and a list of operations to perform on the issue screen field. Note that fields included in here cannot be included in &#x60;fields&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueUpdateDetails = Initialize-PSJiraIssueUpdateDetails  -Fields null `
 -HistoryMetadata null `
 -Properties null `
 -Transition null `
 -Update null
```

- Convert the resource to JSON
```powershell
$IssueUpdateDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

