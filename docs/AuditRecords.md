# AuditRecords
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Limit** | **Int32** | The requested or default limit on the number of audit items to be returned. | [optional] [readonly] 
**Offset** | **Int32** | The number of audit items skipped before the first item in this list. | [optional] [readonly] 
**Records** | [**AuditRecordBean[]**](AuditRecordBean.md) | The list of audit items. | [optional] [readonly] 
**Total** | **Int64** | The total number of audit items returned. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AuditRecords = Initialize-PSJiraAuditRecords  -Limit null `
 -Offset null `
 -Records null `
 -Total null
```

- Convert the resource to JSON
```powershell
$AuditRecords | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

