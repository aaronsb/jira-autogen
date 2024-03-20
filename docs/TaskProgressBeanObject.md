# TaskProgressBeanObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the task. | [optional] 
**ElapsedRuntime** | **Int64** | The execution time of the task, in milliseconds. | 
**Finished** | **Int64** | A timestamp recording when the task was finished. | [optional] 
**Id** | **String** | The ID of the task. | 
**LastUpdate** | **Int64** | A timestamp recording when the task progress was last updated. | 
**Message** | **String** | Information about the progress of the task. | [optional] 
**Progress** | **Int64** | The progress of the task, as a percentage complete. | 
**Result** | [**AnyType**](.md) | The result of the task execution. | [optional] 
**Self** | **String** | The URL of the task. | 
**Started** | **Int64** | A timestamp recording when the task was started. | [optional] 
**Status** | **String** | The status of the task. | 
**Submitted** | **Int64** | A timestamp recording when the task was submitted. | 
**SubmittedBy** | **Int64** | The ID of the user who submitted the task. | 

## Examples

- Prepare the resource
```powershell
$TaskProgressBeanObject = Initialize-PSJiraTaskProgressBeanObject  -Description null `
 -ElapsedRuntime null `
 -Finished null `
 -Id null `
 -LastUpdate null `
 -Message null `
 -Progress null `
 -Result null `
 -Self null `
 -Started null `
 -Status null `
 -Submitted null `
 -SubmittedBy null
```

- Convert the resource to JSON
```powershell
$TaskProgressBeanObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

