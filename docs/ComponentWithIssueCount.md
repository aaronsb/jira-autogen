# ComponentWithIssueCount
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Assignee** | [**User**](User.md) | The details of the user associated with &#x60;assigneeType&#x60;, if any. See &#x60;realAssignee&#x60; for details of the user assigned to issues created with this component. | [optional] 
**AssigneeType** | **String** | The nominal user type used to determine the assignee for issues created with this component. See &#x60;realAssigneeType&#x60; for details on how the type of the user, and hence the user, assigned to issues is determined. Takes the following values:   *  &#x60;PROJECT_LEAD&#x60; the assignee to any issues created with this component is nominally the lead for the project the component is in.  *  &#x60;COMPONENT_LEAD&#x60; the assignee to any issues created with this component is nominally the lead for the component.  *  &#x60;UNASSIGNED&#x60; an assignee is not set for issues created with this component.  *  &#x60;PROJECT_DEFAULT&#x60; the assignee to any issues created with this component is nominally the default assignee for the project that the component is in. | [optional] [readonly] 
**Description** | **String** | The description for the component. | [optional] [readonly] 
**Id** | **String** | The unique identifier for the component. | [optional] [readonly] 
**IsAssigneeTypeValid** | **Boolean** | Whether a user is associated with &#x60;assigneeType&#x60;. For example, if the &#x60;assigneeType&#x60; is set to &#x60;COMPONENT_LEAD&#x60; but the component lead is not set, then &#x60;false&#x60; is returned. | [optional] [readonly] 
**IssueCount** | **Int64** | Count of issues for the component. | [optional] [readonly] 
**Lead** | [**User**](User.md) | The user details for the component&#39;s lead user. | [optional] 
**Name** | **String** | The name for the component. | [optional] [readonly] 
**Project** | **String** | The key of the project to which the component is assigned. | [optional] [readonly] 
**ProjectId** | **Int64** | Not used. | [optional] [readonly] 
**RealAssignee** | [**User**](User.md) | The user assigned to issues created with this component, when &#x60;assigneeType&#x60; does not identify a valid assignee. | [optional] 
**RealAssigneeType** | **String** | The type of the assignee that is assigned to issues created with this component, when an assignee cannot be set from the &#x60;assigneeType&#x60;. For example, &#x60;assigneeType&#x60; is set to &#x60;COMPONENT_LEAD&#x60; but no component lead is set. This property is set to one of the following values:   *  &#x60;PROJECT_LEAD&#x60; when &#x60;assigneeType&#x60; is &#x60;PROJECT_LEAD&#x60; and the project lead has permission to be assigned issues in the project that the component is in.  *  &#x60;COMPONENT_LEAD&#x60; when &#x60;assignee&#x60;Type is &#x60;COMPONENT_LEAD&#x60; and the component lead has permission to be assigned issues in the project that the component is in.  *  &#x60;UNASSIGNED&#x60; when &#x60;assigneeType&#x60; is &#x60;UNASSIGNED&#x60; and Jira is configured to allow unassigned issues.  *  &#x60;PROJECT_DEFAULT&#x60; when none of the preceding cases are true. | [optional] [readonly] 
**Self** | **String** | The URL for this count of the issues contained in the component. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ComponentWithIssueCount = Initialize-PSJiraComponentWithIssueCount  -Assignee null `
 -AssigneeType null `
 -Description null `
 -Id null `
 -IsAssigneeTypeValid null `
 -IssueCount null `
 -Lead null `
 -Name null `
 -Project null `
 -ProjectId null `
 -RealAssignee null `
 -RealAssigneeType null `
 -Self null
```

- Convert the resource to JSON
```powershell
$ComponentWithIssueCount | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

