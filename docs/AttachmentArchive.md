# AttachmentArchive
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Entries** | [**AttachmentArchiveEntry[]**](AttachmentArchiveEntry.md) |  | [optional] 
**MoreAvailable** | **Boolean** |  | [optional] 
**TotalEntryCount** | **Int32** |  | [optional] 
**TotalNumberOfEntriesAvailable** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttachmentArchive = Initialize-PSJiraAttachmentArchive  -Entries null `
 -MoreAvailable null `
 -TotalEntryCount null `
 -TotalNumberOfEntriesAvailable null
```

- Convert the resource to JSON
```powershell
$AttachmentArchive | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

