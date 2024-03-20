# CreateWorkflowTransitionRulesDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conditions** | [**CreateWorkflowCondition**](CreateWorkflowCondition.md) | The workflow conditions. | [optional] 
**PostFunctions** | [**CreateWorkflowTransitionRule[]**](CreateWorkflowTransitionRule.md) | The workflow post functions.  **Note:** The default post functions are always added to the *initial* transition, as in:      &quot;&quot;postFunctions&quot;&quot;: [         {             &quot;&quot;type&quot;&quot;: &quot;&quot;IssueCreateFunction&quot;&quot;         },         {             &quot;&quot;type&quot;&quot;: &quot;&quot;IssueReindexFunction&quot;&quot;         },         {             &quot;&quot;type&quot;&quot;: &quot;&quot;FireIssueEventFunction&quot;&quot;,             &quot;&quot;configuration&quot;&quot;: {                 &quot;&quot;event&quot;&quot;: {                     &quot;&quot;id&quot;&quot;: &quot;&quot;1&quot;&quot;,                     &quot;&quot;name&quot;&quot;: &quot;&quot;issue_created&quot;&quot;                 }             }         }     ]  **Note:** The default post functions are always added to the *global* and *directed* transitions, as in:      &quot;&quot;postFunctions&quot;&quot;: [         {             &quot;&quot;type&quot;&quot;: &quot;&quot;UpdateIssueStatusFunction&quot;&quot;         },         {             &quot;&quot;type&quot;&quot;: &quot;&quot;CreateCommentFunction&quot;&quot;         },         {             &quot;&quot;type&quot;&quot;: &quot;&quot;GenerateChangeHistoryFunction&quot;&quot;         },         {             &quot;&quot;type&quot;&quot;: &quot;&quot;IssueReindexFunction&quot;&quot;         },         {             &quot;&quot;type&quot;&quot;: &quot;&quot;FireIssueEventFunction&quot;&quot;,             &quot;&quot;configuration&quot;&quot;: {                 &quot;&quot;event&quot;&quot;: {                     &quot;&quot;id&quot;&quot;: &quot;&quot;13&quot;&quot;,                     &quot;&quot;name&quot;&quot;: &quot;&quot;issue_generic&quot;&quot;                 }             }         }     ] | [optional] 
**Validators** | [**CreateWorkflowTransitionRule[]**](CreateWorkflowTransitionRule.md) | The workflow validators.  **Note:** The default permission validator is always added to the *initial* transition, as in:      &quot;&quot;validators&quot;&quot;: [         {             &quot;&quot;type&quot;&quot;: &quot;&quot;PermissionValidator&quot;&quot;,             &quot;&quot;configuration&quot;&quot;: {                 &quot;&quot;permissionKey&quot;&quot;: &quot;&quot;CREATE_ISSUES&quot;&quot;             }         }     ] | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateWorkflowTransitionRulesDetails = Initialize-PSJiraCreateWorkflowTransitionRulesDetails  -Conditions null `
 -PostFunctions null `
 -Validators null
```

- Convert the resource to JSON
```powershell
$CreateWorkflowTransitionRulesDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

