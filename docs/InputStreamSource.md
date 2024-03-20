# InputStreamSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InputStream** | [**SystemCollectionsHashtable**](.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InputStreamSource = Initialize-PSJiraInputStreamSource  -InputStream null
```

- Convert the resource to JSON
```powershell
$InputStreamSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

