# Version
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Approvers** | [**VersionApprover[]**](VersionApprover.md) | If the expand option &#x60;approvers&#x60; is used, returns a list containing the approvers for this version. | [optional] [readonly] 
**Archived** | **Boolean** | Indicates that the version is archived. Optional when creating or updating a version. | [optional] 
**Description** | **String** | The description of the version. Optional when creating or updating a version. The maximum size is 16,384 bytes. | [optional] 
**Driver** | **String** | If the expand option &#x60;driver&#x60; is used, returns the Atlassian account ID of the driver. | [optional] [readonly] 
**Expand** | **String** | Use [expand](em&gt;#expansion) to include additional information about version in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;operations&#x60; Returns the list of operations available for this version.  *  &#x60;issuesstatus&#x60; Returns the count of issues in this version for each of the status categories *to do*, *in progress*, *done*, and *unmapped*. The *unmapped* property contains a count of issues with a status other than *to do*, *in progress*, and *done*.  *  &#x60;driver&#x60; Returns the Atlassian account ID of the version driver.  *  &#x60;approvers&#x60; Returns a list containing approvers for this version.  Optional for create and update. | [optional] 
**Id** | **String** | The ID of the version. | [optional] [readonly] 
**IssuesStatusForFixVersion** | [**VersionIssuesStatusForFixVersion**](VersionIssuesStatusForFixVersion.md) |  | [optional] 
**MoveUnfixedIssuesTo** | **String** | The URL of the self link to the version to which all unfixed issues are moved when a version is released. Not applicable when creating a version. Optional when updating a version. | [optional] 
**Name** | **String** | The unique name of the version. Required when creating a version. Optional when updating a version. The maximum length is 255 characters. | [optional] 
**Operations** | [**SimpleLink[]**](SimpleLink.md) | If the expand option &#x60;operations&#x60; is used, returns the list of operations available for this version. | [optional] [readonly] 
**Overdue** | **Boolean** | Indicates that the version is overdue. | [optional] [readonly] 
**Project** | **String** | Deprecated. Use &#x60;projectId&#x60;. | [optional] 
**ProjectId** | **Int64** | The ID of the project to which this version is attached. Required when creating a version. Not applicable when updating a version. | [optional] 
**ReleaseDate** | **System.DateTime** | The release date of the version. Expressed in ISO 8601 format (yyyy-mm-dd). Optional when creating or updating a version. | [optional] 
**Released** | **Boolean** | Indicates that the version is released. If the version is released a request to release again is ignored. Not applicable when creating a version. Optional when updating a version. | [optional] 
**Self** | **String** | The URL of the version. | [optional] [readonly] 
**StartDate** | **System.DateTime** | The start date of the version. Expressed in ISO 8601 format (yyyy-mm-dd). Optional when creating or updating a version. | [optional] 
**UserReleaseDate** | **String** | The date on which work on this version is expected to finish, expressed in the instance&#39;s *Day/Month/Year Format* date format. | [optional] [readonly] 
**UserStartDate** | **String** | The date on which work on this version is expected to start, expressed in the instance&#39;s *Day/Month/Year Format* date format. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Version = Initialize-PSJiraVersion  -Approvers null `
 -Archived null `
 -Description null `
 -Driver null `
 -Expand null `
 -Id null `
 -IssuesStatusForFixVersion null `
 -MoveUnfixedIssuesTo null `
 -Name null `
 -Operations null `
 -Overdue null `
 -Project null `
 -ProjectId null `
 -ReleaseDate null `
 -Released null `
 -Self null `
 -StartDate null `
 -UserReleaseDate null `
 -UserStartDate null
```

- Convert the resource to JSON
```powershell
$Version | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

