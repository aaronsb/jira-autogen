# VersionApprover
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The Atlassian account ID of the approver. | [optional] [readonly] 
**DeclineReason** | **String** | A description of why the user is declining the approval. | [optional] [readonly] 
**Description** | **String** | A description of what the user is approving within the specified version. | [optional] [readonly] 
**Status** | **String** | The status of the approval, which can be *PENDING*, *APPROVED*, or *DECLINED* | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$VersionApprover = Initialize-PSJiraVersionApprover  -AccountId null `
 -DeclineReason null `
 -Description null `
 -Status null
```

- Convert the resource to JSON
```powershell
$VersionApprover | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

