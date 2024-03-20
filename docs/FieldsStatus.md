# FieldsStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the status. | [optional] [readonly] 
**IconUrl** | **String** | The URL of the icon used to represent the status. | [optional] [readonly] 
**Id** | **String** | The ID of the status. | [optional] [readonly] 
**Name** | **String** | The name of the status. | [optional] [readonly] 
**Scope** | [**StatusDetailsScope**](StatusDetailsScope.md) |  | [optional] 
**Self** | **String** | The URL of the status. | [optional] [readonly] 
**StatusCategory** | [**StatusDetailsStatusCategory**](StatusDetailsStatusCategory.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldsStatus = Initialize-PSJiraFieldsStatus  -Description null `
 -IconUrl null `
 -Id null `
 -Name null `
 -Scope null `
 -Self null `
 -StatusCategory null
```

- Convert the resource to JSON
```powershell
$FieldsStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

