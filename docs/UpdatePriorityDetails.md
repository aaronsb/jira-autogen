# UpdatePriorityDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the priority. | [optional] 
**IconUrl** | **String** | The URL of an icon for the priority. Accepted protocols are HTTP and HTTPS. Built in icons can also be used. | [optional] 
**Name** | **String** | The name of the priority. Must be unique. | [optional] 
**StatusColor** | **String** | The status color of the priority in 3-digit or 6-digit hexadecimal format. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdatePriorityDetails = Initialize-PSJiraUpdatePriorityDetails  -Description null `
 -IconUrl null `
 -Name null `
 -StatusColor null
```

- Convert the resource to JSON
```powershell
$UpdatePriorityDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

