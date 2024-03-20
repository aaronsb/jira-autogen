# FoundGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupId** | **String** | The ID of the group, which uniquely identifies the group across all Atlassian products. For example, *952d12c3-5b5b-4d04-bb32-44d383afc4b2*. | [optional] 
**Html** | **String** | The group name with the matched query string highlighted with the HTML bold tag. | [optional] 
**Labels** | [**GroupLabel[]**](GroupLabel.md) |  | [optional] 
**Name** | **String** | The name of the group. The name of a group is mutable, to reliably identify a group use &#x60;&#x60;groupId&#x60;.&#x60; | [optional] 

## Examples

- Prepare the resource
```powershell
$FoundGroup = Initialize-PSJiraFoundGroup  -GroupId null `
 -Html null `
 -Labels null `
 -Name null
```

- Convert the resource to JSON
```powershell
$FoundGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

