# AttachmentSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | Whether the ability to add attachments is enabled. | [optional] [readonly] 
**UploadLimit** | **Int64** | The maximum size of attachments permitted, in bytes. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AttachmentSettings = Initialize-PSJiraAttachmentSettings  -Enabled null `
 -UploadLimit null
```

- Convert the resource to JSON
```powershell
$AttachmentSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

