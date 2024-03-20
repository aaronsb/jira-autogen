# ProjectLandingPageInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | **System.Collections.Hashtable** |  | [optional] 
**BoardId** | **Int64** |  | [optional] 
**BoardName** | **String** |  | [optional] 
**ProjectKey** | **String** |  | [optional] 
**ProjectType** | **String** |  | [optional] 
**QueueCategory** | **String** |  | [optional] 
**QueueId** | **Int64** |  | [optional] 
**QueueName** | **String** |  | [optional] 
**SimpleBoard** | **Boolean** |  | [optional] 
**Simplified** | **Boolean** |  | [optional] 
**Url** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectLandingPageInfo = Initialize-PSJiraProjectLandingPageInfo  -Attributes null `
 -BoardId null `
 -BoardName null `
 -ProjectKey null `
 -ProjectType null `
 -QueueCategory null `
 -QueueId null `
 -QueueName null `
 -SimpleBoard null `
 -Simplified null `
 -Url null
```

- Convert the resource to JSON
```powershell
$ProjectLandingPageInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

