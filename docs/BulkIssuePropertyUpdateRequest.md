# BulkIssuePropertyUpdateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expression** | **String** | EXPERIMENTAL. The Jira expression to calculate the value of the property. The value of the expression must be an object that can be converted to JSON, such as a number, boolean, string, list, or map. The context variables available to the expression are &#x60;issue&#x60; and &#x60;user&#x60;. Issues for which the expression returns a value whose JSON representation is longer than 32768 characters are ignored. | [optional] 
**VarFilter** | [**IssueFilterForBulkPropertySet**](IssueFilterForBulkPropertySet.md) | The bulk operation filter. | [optional] 
**Value** | [**AnyType**](.md) | The value of the property. The value must be a [valid](https://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters. | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkIssuePropertyUpdateRequest = Initialize-PSJiraBulkIssuePropertyUpdateRequest  -Expression null `
 -VarFilter null `
 -Value null
```

- Convert the resource to JSON
```powershell
$BulkIssuePropertyUpdateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

