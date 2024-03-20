# AttachmentArchiveImpl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Entries** | [**AttachmentArchiveEntry[]**](AttachmentArchiveEntry.md) | The list of the items included in the archive. | [optional] 
**TotalEntryCount** | **Int32** | The number of items in the archive. | [optional] 

## Examples

- Prepare the resource
```powershell
$AttachmentArchiveImpl = Initialize-PSJiraAttachmentArchiveImpl  -Entries null `
 -TotalEntryCount null
```

- Convert the resource to JSON
```powershell
$AttachmentArchiveImpl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

