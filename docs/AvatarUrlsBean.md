# AvatarUrlsBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Var16x16** | **String** | The URL of the item&#39;s 16x16 pixel avatar. | [optional] 
**Var24x24** | **String** | The URL of the item&#39;s 24x24 pixel avatar. | [optional] 
**Var32x32** | **String** | The URL of the item&#39;s 32x32 pixel avatar. | [optional] 
**Var48x48** | **String** | The URL of the item&#39;s 48x48 pixel avatar. | [optional] 

## Examples

- Prepare the resource
```powershell
$AvatarUrlsBean = Initialize-PSJiraAvatarUrlsBean  -Var16x16 null `
 -Var24x24 null `
 -Var32x32 null `
 -Var48x48 null
```

- Convert the resource to JSON
```powershell
$AvatarUrlsBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

