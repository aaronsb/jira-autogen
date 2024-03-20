# FieldReferenceData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Auto** | **String** | Whether the field provide auto-complete suggestions. | [optional] 
**Cfid** | **String** | If the item is a custom field, the ID of the custom field. | [optional] 
**Deprecated** | **String** | Whether this field has been deprecated. | [optional] 
**DeprecatedSearcherKey** | **String** | The searcher key of the field, only passed when the field is deprecated. | [optional] 
**DisplayName** | **String** | The display name contains the following:   *  for system fields, the field name. For example, &#x60;Summary&#x60;.  *  for collapsed custom fields, the field name followed by a hyphen and then the field name and field type. For example, &#x60;Component - Component[Dropdown]&#x60;.  *  for other custom fields, the field name followed by a hyphen and then the custom field ID. For example, &#x60;Component - cf[10061]&#x60;. | [optional] 
**Operators** | **String[]** | The valid search operators for the field. | [optional] 
**Orderable** | **String** | Whether the field can be used in a query&#39;s &#x60;ORDER BY&#x60; clause. | [optional] 
**Searchable** | **String** | Whether the content of this field can be searched. | [optional] 
**Types** | **String[]** | The data types of items in the field. | [optional] 
**Value** | **String** | The field identifier. | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldReferenceData = Initialize-PSJiraFieldReferenceData  -Auto null `
 -Cfid null `
 -Deprecated null `
 -DeprecatedSearcherKey null `
 -DisplayName null `
 -Operators null `
 -Orderable null `
 -Searchable null `
 -Types null `
 -Value null
```

- Convert the resource to JSON
```powershell
$FieldReferenceData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

