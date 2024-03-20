# CreatedIssueTransition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorCollection** | [**ErrorCollection**](ErrorCollection.md) |  | [optional] 
**Status** | **Int32** |  | [optional] 
**WarningCollection** | [**WarningCollection**](WarningCollection.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatedIssueTransition = Initialize-PSJiraCreatedIssueTransition  -ErrorCollection null `
 -Status null `
 -WarningCollection null
```

- Convert the resource to JSON
```powershell
$CreatedIssueTransition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

