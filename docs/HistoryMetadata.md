# HistoryMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityDescription** | **String** | The activity described in the history record. | [optional] 
**ActivityDescriptionKey** | **String** | The key of the activity described in the history record. | [optional] 
**Actor** | [**HistoryMetadataParticipant**](HistoryMetadataParticipant.md) | Details of the user whose action created the history record. | [optional] 
**Cause** | [**HistoryMetadataParticipant**](HistoryMetadataParticipant.md) | Details of the cause that triggered the creation the history record. | [optional] 
**Description** | **String** | The description of the history record. | [optional] 
**DescriptionKey** | **String** | The description key of the history record. | [optional] 
**EmailDescription** | **String** | The description of the email address associated the history record. | [optional] 
**EmailDescriptionKey** | **String** | The description key of the email address associated the history record. | [optional] 
**ExtraData** | **System.Collections.Hashtable** | Additional arbitrary information about the history record. | [optional] 
**Generator** | [**HistoryMetadataParticipant**](HistoryMetadataParticipant.md) | Details of the system that generated the history record. | [optional] 
**Type** | **String** | The type of the history record. | [optional] 

## Examples

- Prepare the resource
```powershell
$HistoryMetadata = Initialize-PSJiraHistoryMetadata  -ActivityDescription null `
 -ActivityDescriptionKey null `
 -Actor null `
 -Cause null `
 -Description null `
 -DescriptionKey null `
 -EmailDescription null `
 -EmailDescriptionKey null `
 -ExtraData null `
 -Generator null `
 -Type null
```

- Convert the resource to JSON
```powershell
$HistoryMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

