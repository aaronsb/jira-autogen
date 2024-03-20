# AttachmentArchiveMetadataReadable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Entries** | [**AttachmentArchiveItemReadable[]**](AttachmentArchiveItemReadable.md) | The list of the items included in the archive. | [optional] [readonly] 
**Id** | **Int64** | The ID of the attachment. | [optional] [readonly] 
**MediaType** | **String** | The MIME type of the attachment. | [optional] [readonly] 
**Name** | **String** | The name of the archive file. | [optional] [readonly] 
**TotalEntryCount** | **Int64** | The number of items included in the archive. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AttachmentArchiveMetadataReadable = Initialize-PSJiraAttachmentArchiveMetadataReadable  -Entries null `
 -Id null `
 -MediaType null `
 -Name null `
 -TotalEntryCount null
```

- Convert the resource to JSON
```powershell
$AttachmentArchiveMetadataReadable | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

