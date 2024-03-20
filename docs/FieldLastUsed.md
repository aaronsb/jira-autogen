# FieldLastUsed
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Last used value type:   *  *TRACKED*: field is tracked and a last used date is available.  *  *NOT\_TRACKED*: field is not tracked, last used date is not available.  *  *NO\_INFORMATION*: field is tracked, but no last used date is available. | [optional] 
**Value** | **System.DateTime** | The date when the value of the field last changed. | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldLastUsed = Initialize-PSJiraFieldLastUsed  -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$FieldLastUsed | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

