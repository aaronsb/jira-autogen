# ServiceRegistryTier
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | tier description | [optional] 
**Id** | **String** | tier ID | [optional] 
**Level** | **Int32** | tier level | [optional] 
**Name** | **String** | tier name | [optional] 
**NameKey** | **String** | name key of the tier | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceRegistryTier = Initialize-PSJiraServiceRegistryTier  -Description null `
 -Id null `
 -Level null `
 -Name null `
 -NameKey service-registry.tier1.name
```

- Convert the resource to JSON
```powershell
$ServiceRegistryTier | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

