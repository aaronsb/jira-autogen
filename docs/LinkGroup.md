# LinkGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Groups** | [**LinkGroup[]**](LinkGroup.md) |  | [optional] 
**Header** | [**SimpleLink**](SimpleLink.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Links** | [**SimpleLink[]**](SimpleLink.md) |  | [optional] 
**StyleClass** | **String** |  | [optional] 
**Weight** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LinkGroup = Initialize-PSJiraLinkGroup  -Groups null `
 -Header null `
 -Id null `
 -Links null `
 -StyleClass null `
 -Weight null
```

- Convert the resource to JSON
```powershell
$LinkGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

