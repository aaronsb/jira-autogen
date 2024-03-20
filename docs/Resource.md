# Resource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**File** | **System.IO.FileInfo** |  | [optional] 
**Filename** | **String** |  | [optional] 
**InputStream** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Open** | **Boolean** |  | [optional] 
**Readable** | **Boolean** |  | [optional] 
**Uri** | **String** |  | [optional] 
**Url** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Resource = Initialize-PSJiraResource  -Description null `
 -File null `
 -Filename null `
 -InputStream null `
 -Open null `
 -Readable null `
 -Uri null `
 -Url null
```

- Convert the resource to JSON
```powershell
$Resource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

