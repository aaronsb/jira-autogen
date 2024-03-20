# StatusMigration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewStatusReference** | **String** | The new status ID. | 
**OldStatusReference** | **String** | The old status ID. | 

## Examples

- Prepare the resource
```powershell
$StatusMigration = Initialize-PSJiraStatusMigration  -NewStatusReference null `
 -OldStatusReference null
```

- Convert the resource to JSON
```powershell
$StatusMigration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

