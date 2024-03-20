# SecuritySchemeWithProjects
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultLevel** | **Int64** | The default level ID of the issue security scheme. | [optional] [readonly] 
**Description** | **String** | The description of the issue security scheme. | [optional] [readonly] 
**Id** | **Int64** | The ID of the issue security scheme. | [readonly] 
**Name** | **String** | The name of the issue security scheme. | [readonly] 
**ProjectIds** | **Int64[]** | The list of project IDs associated with the issue security scheme. | [optional] [readonly] 
**Self** | **String** | The URL of the issue security scheme. | [readonly] 

## Examples

- Prepare the resource
```powershell
$SecuritySchemeWithProjects = Initialize-PSJiraSecuritySchemeWithProjects  -DefaultLevel null `
 -Description null `
 -Id null `
 -Name null `
 -ProjectIds null `
 -Self null
```

- Convert the resource to JSON
```powershell
$SecuritySchemeWithProjects | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

