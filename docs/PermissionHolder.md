# PermissionHolder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expand** | **String** | Expand options that include additional permission holder details in the response. | [optional] [readonly] 
**Parameter** | **String** | As a group&#39;s name can change, use of &#x60;value&#x60; is recommended. The identifier associated withthe &#x60;type&#x60; value that defines the holder of the permission. | [optional] 
**Type** | **String** | The type of permission holder. | 
**Value** | **String** | The identifier associated with the &#x60;type&#x60; value that defines the holder of the permission. | [optional] 

## Examples

- Prepare the resource
```powershell
$PermissionHolder = Initialize-PSJiraPermissionHolder  -Expand null `
 -Parameter null `
 -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$PermissionHolder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

