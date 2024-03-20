# AttachmentArchiveEntry
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AbbreviatedName** | **String** |  | [optional] 
**EntryIndex** | **Int64** |  | [optional] 
**MediaType** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Size** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttachmentArchiveEntry = Initialize-PSJiraAttachmentArchiveEntry  -AbbreviatedName null `
 -EntryIndex null `
 -MediaType null `
 -Name null `
 -Size null
```

- Convert the resource to JSON
```powershell
$AttachmentArchiveEntry | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

