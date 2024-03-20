# ActorInputBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Group** | **String[]** | The name of the group to add as a default actor. This parameter cannot be used with the &#x60;groupId&#x60; parameter. As a group&#39;s name can change,use of &#x60;groupId&#x60; is recommended. This parameter accepts a comma-separated list. For example, &#x60;&quot;&quot;group&quot;&quot;:[&quot;&quot;project-admin&quot;&quot;, &quot;&quot;jira-developers&quot;&quot;]&#x60;. | [optional] 
**GroupId** | **String[]** | The ID of the group to add as a default actor. This parameter cannot be used with the &#x60;group&#x60; parameter This parameter accepts a comma-separated list. For example, &#x60;&quot;&quot;groupId&quot;&quot;:[&quot;&quot;77f6ab39-e755-4570-a6ae-2d7a8df0bcb8&quot;&quot;, &quot;&quot;0c011f85-69ed-49c4-a801-3b18d0f771bc&quot;&quot;]&#x60;. | [optional] 
**User** | **String[]** | The account IDs of the users to add as default actors. This parameter accepts a comma-separated list. For example, &#x60;&quot;&quot;user&quot;&quot;:[&quot;&quot;5b10a2844c20165700ede21g&quot;&quot;, &quot;&quot;5b109f2e9729b51b54dc274d&quot;&quot;]&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActorInputBean = Initialize-PSJiraActorInputBean  -Group null `
 -GroupId null `
 -User null
```

- Convert the resource to JSON
```powershell
$ActorInputBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

