# AttachmentArchiveItemReadable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Index** | **Int64** | The position of the item within the archive. | [optional] [readonly] 
**Label** | **String** | The label for the archive item. | [optional] [readonly] 
**MediaType** | **String** | The MIME type of the archive item. | [optional] [readonly] 
**Path** | **String** | The path of the archive item. | [optional] [readonly] 
**Size** | **String** | The size of the archive item. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AttachmentArchiveItemReadable = Initialize-PSJiraAttachmentArchiveItemReadable  -Index null `
 -Label null `
 -MediaType null `
 -Path null `
 -Size null
```

- Convert the resource to JSON
```powershell
$AttachmentArchiveItemReadable | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

