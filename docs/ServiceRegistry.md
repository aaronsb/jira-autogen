# ServiceRegistry
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | service description | [optional] 
**Id** | **String** | service ID | [optional] 
**Name** | **String** | service name | [optional] 
**OrganizationId** | **String** | organization ID | [optional] 
**Revision** | **String** | service revision | [optional] 
**ServiceTier** | [**ServiceRegistryTier**](ServiceRegistryTier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceRegistry = Initialize-PSJiraServiceRegistry  -Description null `
 -Id null `
 -Name null `
 -OrganizationId null `
 -Revision null `
 -ServiceTier null
```

- Convert the resource to JSON
```powershell
$ServiceRegistry | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

