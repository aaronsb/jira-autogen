# PageOfComments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comments** | [**Comment[]**](Comment.md) | The list of comments. | [optional] [readonly] 
**MaxResults** | **Int32** | The maximum number of items that could be returned. | [optional] [readonly] 
**StartAt** | **Int64** | The index of the first item returned. | [optional] [readonly] 
**Total** | **Int64** | The number of items returned. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PageOfComments = Initialize-PSJiraPageOfComments  -Comments null `
 -MaxResults null `
 -StartAt null `
 -Total null
```

- Convert the resource to JSON
```powershell
$PageOfComments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

